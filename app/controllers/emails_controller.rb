class EmailsController < ApplicationController
  def new
    @email = Email.new
  end

  def create
    @email = Email.create(safe_params)
    redirect_to action: :show, id: @email.id
  end

  def show
    @email = Email.find(params[:id])
  end
  private

  def safe_params
    params.require(:email).permit(:email)
  end
end