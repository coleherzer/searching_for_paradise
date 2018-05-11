class LettersController < ApplicationController
  def new
  end

  def create
    LettersMailer.with(email: params[:email]).email.deliver_now
    redirect_to root_path
  end
end
