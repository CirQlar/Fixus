class DevicesController < ApplicationController
  before_action :authenticate_person!
  before_action :set_device, only: [:show, :edit, :update, :fix]

  def index
    if user_signed_in?
      @devices = current_user.devices.order('created_at DESC').paginate(page: params[:page])
    else
      @devices = Device.order('created_at DESC').paginate(page: params[:page])
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

  def fix
    @repair = Repair.new
    @repair.address = Address.new
    @repair.device = @device

    if user_signed_in?
      @repair.user = current_user
      @addresses = current_user.addresses
      @devices = current_user.devices
    else
      @repair.user = User.new
      @addresses = []
      @devices = []
    end
  end

  private
    def set_device
      @device = Device.friendly.find(params[:id])
      authenticate_correct_user! @device
    end

    def device_params
      params.require(:device).permit(:name, :color, :serial_number)
    end
end
