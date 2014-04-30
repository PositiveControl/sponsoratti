class EmailsController < ApplicationController
  def new
    @email = Email.new
  end

  def create
    @email = Email.create(safe_params)
    flash[:notice] = "Thank you for your interest"
    redirect_to action: :new, id: @email.id
  end

  def show
    @email = Email.find(params[:id])
  end
  private

  def safe_params
    params.require(:email).permit(:email)
  end
end