class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    #flash[:alert] = "Access denied."
    #redirect_to root_path
    render text: "Access denied."
  end

  include Pundit
end
