class UsersController < ApplicationController

  helper_method :user
  attr_reader :user

  def new
    @user = User.new
    @companies = Company.all
  end

  def create
    @user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Welcome to Build Better! You're now logged in!"
      redirect_to projects_path
    else
      flash[:notice] = "Check the error messages and try again!"
      @companies = Company.all
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :company_id,
      :password,
      :password_confirmation
    )
  end
end
