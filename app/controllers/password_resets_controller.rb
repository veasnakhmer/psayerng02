class PasswordResetsController < ApplicationController
  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.find_by_email(params[:email].downcase)
    user.send_password_reset if user
    redirect_to root_path, notice: "Email sent with password reset instructions."
  end

  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end

  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user.reset_password_sent_at < 2.hours.ago
      redirect_to_new password_reset_path, alert: "Reset password request has expired."
    elsif @user.update_attributes(params[:user])
      redirect_to root_path, notice: "Password has been reset!"
    else
      render :edit
    end
  end
end
