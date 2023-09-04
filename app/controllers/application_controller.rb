class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  # Confirms a logged-in user.
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to login_url # halts request cycle
    end
  end
end
