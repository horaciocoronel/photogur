class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    User.find_by(id: session[:user_id])
  end

  def ensure_logged_in
    unless current_user.id
      flash[:alert] = "Please log in"
      redirect_to new_sessions_url
    end
  end

  def ensure_user_owns_picture
    if current_user != nil && (current_user.id != @picture.user_id)
      flash[:alert] = "You cant update!"
      redirect_to root_path
    end
  end
end
