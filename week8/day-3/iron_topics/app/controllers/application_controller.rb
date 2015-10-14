class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # protected
  #
  # # User this if you aren't using devise's authenticate_user!
  # def ensure_logged_in
  #   if current_user.nil?
  #     redirect_to new_user_session_path
  #   end
  # end
end
