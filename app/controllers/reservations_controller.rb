class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render :index
  end

  def show
    @reservation = Reservation.find_by(id: params[:id])
    render :show
  end

  def create
    @reservation = Reservation.new(
      user_id: params[:user_id],
      room_id: params[:room_id],
      start_date: Date.parse(params[:start_date], "%Y/%m/%d"),
      end_date: Date.parse(params[:end_date], "%Y/%m/%d"),
      price: params[:price],
      total: params[:total],
    )

    if @reservation.valid?
      @reservation.save
      render :show
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @reservation = Reservation.find_by(id: params[:id])
    if params[:start_date]
      start = Date.parse(params[:start_date], "%Y/%m/%d")
    end
    if params[:end_date]
      end_date = Date.parse(params[:end_date], "%Y/%m/%d")
    end
    @reservation.update(
      user_id: params[:user_id] || @reservation.user_id,
      room_id: params[:room_id] || @reservation.room_id,
      start_date: start || @reservation.start_date,
      end_date: end_date || @reservation.end_date,
      price: params[:price] || @reservation.price,
      total: params[:total] || @reservation.total,
    )
    if @reservation.valid?
      render :show
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.destroy
    render json: { message: "Reservation has been destroyed!" }
  end
end
