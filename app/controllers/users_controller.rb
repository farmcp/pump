class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @exercises = @user.exercises
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

end
