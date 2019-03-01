class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token, raise: false

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def logged_in?
    !!current_user
  end

  def login!(user)
    @current_user = user
    session[:session_token] = @current_user.reset_session_token
  end

  def logout
    current_user.reset_session_token
    session[:session_token] = nil
  end

  def require_login
    redirect_to root unless logged_in?
  end

end
