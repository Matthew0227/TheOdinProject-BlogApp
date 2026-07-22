class SessionsController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_session_path, alert: "Try again later." }

  def new
  end

  def create
    user = User.find_by(
      "lower(email_address) = :login OR lower(username) = :login",
      login: params[:login].downcase
    )

    if user&.authenticate(params[:password])
      start_new_session_for(user)
      redirect_to after_authentication_url, notice: "Welcome back!"
    else
      redirect_to new_session_path, alert: "Invalid email/username or password."
    end
  end

  def destroy
    terminate_session
    redirect_to new_session_path, notice: "You have been logged out.", status: :see_other
  end
end
