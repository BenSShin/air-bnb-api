class ReviewsController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]
    
    def create
        @review = Review.new(
          reservation_id: params[:reservation_id],
          rating: params[:rating],
          comment: params[:comment],
        )
        if @review.save
          render json: { message: "Review successfully created!" }, status: :created
        else
          render json: { errors: review.errors.full_messages }, status: :bad_request
        end
      end


    def index
        @reviews = Review.all 
        render :index
    end

     def show
        @review = Review.find_by(id: params[:id])
        render :show
     end

     def update
        @review = Review.find_by(id: params[:id])
        @review.update(
          reservation_id: params[:reservation_id] || @review.reservation_id,
          rating: params[:rating] || @review.rating,
          comment: params[:comment] || @review.comment,
        )
        render :show
      end

    def destroy
        @review = Review.find_by(id: params[:id])
        @review.destroy
        render json: { message: "Review destroyed successfully" }
    end
      
end
