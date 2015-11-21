class RatingsController < ApplicationController
  def show
    @rating = Rating.find(params[:id])
  end

  def create
    @rating = Rating.new(rating_params)
  end

  def update
  end

  private

  def rating_params
    params.require(:rating).permit(:severity, :integer)
  end

end
