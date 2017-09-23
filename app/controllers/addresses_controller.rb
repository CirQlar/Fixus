class AddressesController < ApplicationController
  before_action :authenticate_user_or_admin!
  before_action :set_address, only: [:show, :edit, :update]

  def index
  end

  def edit
  end

  def update
    if @address.update(address_params)
      redirect_to @address
    else
      render :edit
    end
  end

  def show
  end

  private
    def set_address
      @address = Address.find(params[:id])
      correct_user_signed_in? @address
    end

    def address_params
      params.require(:address).permit(:line_1, :line_2, :lga)
    end
end
