class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render :index
  end

  def create
    @room = Room.create(
      user_id: params[:user_id],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      price: params[:price],
      description: params[:description],
      home_type: params[:home_type],
      room_type: params[:room_type],
      total_occupancy: params[:total_occupancy],
      total_bedrooms: params[:total_bedrooms],
      total_bathrooms: params[:total_bathrooms],
    )
    render :show
  end

  def show
    @room = Room.find_by(id: params[:id])
    render :show
  end

  def update
    @room = Room.find_by(id: params[:id])
    @room.update(
      address: params[:address] || @room.address,
      city: params[:city] || @room.city,
      state: params[:state] || @room.state,
      price: params[:price] || @room.price,
      description: params[:description] || @room.description,
      home_type: params[:home_type] || @room.home_type,
      room_type: params[:room_type] || @room.room_type,
      total_occupancy: params[:total_occupancy] || @room.total_occupancy,
      total_bedrooms: params[:total_bedrooms] || @room.total_bedrooms,
      total_bathrooms: params[:total_bathrooms] || @room.total_bathrooms,
    )
    render :show
  end

  def destroy
    @room = Room.find_by(id: params[:id])
    @room.destroy
    render json: { message: "Room destroyed successfully" }
  end
end
