class DevicesController < ApplicationController
  before_action :authenticate_user_or_admin!
  before_action :set_device, only: [:show, :edit, :update]

  def index
    if user_signed_in?
      @devices = current_user.devices
    else
      @devices = Device.all
    end
  end

  def edit
  end

  def update
    if @device.update(device_params)
      redirect_to @device
    else
      render :edit
    end
  end

  def show

  end

  private
    def set_device
      @device = Device.find(params[:id])
      authenticate_correct_user! @device
    end

    def device_params
      params.require(:device).permit(:name, :color, :serial_number)
    end
end
