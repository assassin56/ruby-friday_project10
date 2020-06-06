class ApplicationController < ActionController::Base
  protect_from_forgery with: :expection
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(sessions[:user_])
    end
  end
end
