class BookingsController < ApplicationController

  # GET /meals/new
  def index
    @meal = Meal.find(params[:meal_id])
  end

end
