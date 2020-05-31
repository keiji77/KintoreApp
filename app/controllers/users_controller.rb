class UsersController < ApplicationController
  def show
    @muscles = Muscle.where(user_id: current_user.id)
  end
end