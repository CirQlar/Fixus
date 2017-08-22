class DevicesController < ApplicationController
  before_action :set_device, only: [:show, :edit, :update]

  def index
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
    end

    def device_params
      params.require(:device).permit(:name, :color, :serial_number)
    end
end
