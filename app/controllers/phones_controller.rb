class PhonesController < ApplicationController
  def index
    phone = Phone.all

    render json: phone.as_json
  end

  def show
    phone = Phone.find_by(id: params[:id])

    render json: phone.as_json
  end

  def create
    phone = Phone.new(
      color: params[:color],
      edition: params[:edition],
      size: params[:size],
    )
    phone.save

    render json: phone.as_json
  end

  def update
    phone = Phone.find_by(id: params[:id])
    phone.color = params[:color] || phone.color
    phone.edition = params[:edition] || phone.edition
    phone.size = params[:size] || phone.size
    phone.save

    render json: phone.as_json
  end

  def destroy
    phone = Phone.find_by(id: params[:id])
    phone.destroy

    render json: { message: "your phone as been destroyed" }
  end
end
