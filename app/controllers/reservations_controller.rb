class ReservationsController < ApplicationController
  before_action :authenticate_user, excempt: [:index, :show]

  def index
    @reservations = Reservation.all
    render :index
  end

  def show
    @reservation = Reservation.find_by(id: params[:id])
    render :show
  end

  def create
    # calculates total
    room = Room.find_by(id: params[:room_id])
    start_date = Date.parse(params[:start_date], "%Y/%m/%d")
    end_date = Date.parse(params[:end_date], "%Y/%m/%d")
    total_days = (end_date - start_date).to_i
    total_price = total_days * room.price

    # shows message if end date is before start date instead of adding to database
    if total_days.negative? == true
      render json: { message: "End date can't be before start date!" }
    else
      @reservation = Reservation.new(
        user_id: current_user.id,
        room_id: params[:room_id],
        start_date: start_date,
        end_date: end_date,
        price: room.price,
        total: total_price,
      )

      if @reservation.valid?
        @reservation.save
        render :show
      else
        render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end

  def update
    @reservation = Reservation.find_by(id: params[:id])
    if params[:start_date]
      start = Date.parse(params[:start_date], "%Y/%m/%d")
      total_days = (@reservation.end_date - start).to_i
    end
    if params[:end_date]
      end_date = Date.parse(params[:end_date], "%Y/%m/%d")
      total_days = (end_date - @reservation.start_date).to_i
    end
    if total_days.negative? == true
      render json: { message: "End date cannot be before start date!" }
    else
      @reservation.update(
        room_id: params[:room_id] || @reservation.room_id,
        start_date: start || @reservation.start_date,
        end_date: end_date || @reservation.end_date,
      )
      # calculates new total if dates were changed
      if params[:end_date] || params[:start_date]
        total_days = (@reservation.end_date - @reservation.start_date).to_i
        room = Room.find_by(id: @reservation.room_id)
        total_price = total_days * room.price

        @reservation.update(
          price: room.price,
          total: total_price,
        )
      end

      if @reservation.valid?
        render :show
      else
        render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.destroy
    render json: { message: "Reservation has been destroyed!" }
  end
end
