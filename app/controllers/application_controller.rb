class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def auth_user
    if current_user.blank?
      redirect_to root_path
    end
  end
end
