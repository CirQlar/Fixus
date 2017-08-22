class RepairsController < ApplicationController
  before_action :set_repair, only: [:show, :edit, :update]

  def new
    @repair = Repair.new
    @repair.address = Address.new
    @repair.device = Device.new

    #temporary
    @addresses = Address.all
    @devices = Device.all
  end

  def create
    @repair = Repair.new(repair_params)

    if @repair.save
      redirect_to @repair
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @repair.update(repair_params)
      redirect_to @repair
    else
      render :edit
    end
  end

  def show
  end

  private
    def set_repair
      @repair = Repair.find(params[:id])
    end

    def repair_params
      params.require(:repair).permit(:info, :device_id, :address_id, device_attributes: [:name, :color, :serial_number], address_attributes: [:line_1, :line_2, :lga])
    end
end
