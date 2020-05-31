class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end
  
  def new
    @meal = Meal.new
  end

  def create
    Meal.create(day: meal_params[:day], meal_content: meal_params[:meal_content], protein: meal_params[:protein], user_id: current_user.id )
    redirect_to action: :index
  end

  def show
    @meals = Meal.where(user_id: current_user.id)
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    meal = Meal.find(params[:id])
    meal.update(muscle_params)
    redirect_to action: :index
  end

  def destroy
    meal = Meal.find(params[:id])
    meal.destroy
    redirect_to action: :index
  end


  private
    def meal_params
      params.require(:meal).permit(:day, :meal_content, :protein)
    end
end