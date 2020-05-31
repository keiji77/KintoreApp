class MusclesController < ApplicationController
  def index
    
  end

  def new
    @muscle = Muscle.new
  end

  def create
    Muscle.create(day: muscle_params[:day], menu: muscle_params[:menu], load: muscle_params[:load], user_id: current_user.id)
    redirect_to action: :index
  end

  def show
    @muscles = Muscle.where(user_id: current_user.id)
  end

  def edit
    @muscle = Muscle.find(params[:id])
  end

  def update
    muscle = Muscle.find(params[:id])
    muscle.update(muscle_params)
    redirect_to action: :index
  end

  def destroy
    muscle = Muscle.find(params[:id])
    muscle.destroy
    redirect_to action: :index
  end


  private
    def muscle_params
      params.require(:muscle).permit(:day, :menu, :load)
    end
end

#day: muscle_params[:day], menu: muscle_params[:menu], load: muscle_params[:load], user_id: current_user.id