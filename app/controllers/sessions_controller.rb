# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = 'loged in successfully'
      redirect_to user
    else
      flash.now[:alert] = 'there was somthing wrong with login details'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'logged out'
    redirect_to root_path
  end
end
