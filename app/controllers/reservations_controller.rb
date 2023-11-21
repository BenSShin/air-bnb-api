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
end
