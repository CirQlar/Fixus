class AddressesController < ApplicationController
  before_action :authenticate_user_or_admin!
  before_action :set_address, only: [:show, :edit, :update]

  def index
    if user_signed_in?
      @addresses = current_user.addresses.order('created_at DESC').paginate(page: params[:page])
    else
      @addresses = Address.order('created_at DESC').paginate(page: params[:page])
    end
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
      @address = Address.friendly.find(params[:id])
      authenticate_correct_user! @address
    end

    def address_params
      params.require(:address).permit(:line_1, :line_2, :lga)
    end
end
