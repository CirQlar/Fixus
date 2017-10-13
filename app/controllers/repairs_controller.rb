class RepairsController < ApplicationController
  before_action :authenticate_user_or_admin!, except: [:pick_up, :fix, :deliver]
  before_action :authenticate_admin!, only: [:pick_up, :fix, :deliver]
  before_action :set_repair, only: [:show, :edit, :update, :pick_up, :fix, :deliver, :cancel]

  def index
    if user_signed_in?
      @repairs = current_user.repairs.paginate(page: params[:page])
    else
      @repairs = Repair.paginate(page: params[:page])
    end
  end

  def new
    @repair = Repair.new
    @repair.address = Address.new
    @repair.device = Device.new

    if user_signed_in?
      @repair.user = current_user
    else
      @repair.user = User.new
    end

    #temporary
    @addresses = Address.all
    @devices = Device.all
  end

  def create
    @repair = Repair.new(repair_params)
    @repair.user = current_user
    @repair.device.user = current_user
    @repair.address.user = current_user

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

  def pick_up
    if @repair.picked_up!
      @repair.pick_up_time = Time.now
      @repair.save
      redirect_to @repair
    end
  end

  def fix
    if @repair.fixed!
      @repair.fix_time = Time.now
      @repair.save
      redirect_to @repair
    end
  end

  def deliver
    if @repair.delivered!
      @repair.deliver_time = Time.now
      @repair.save
      redirect_to @repair
    end
  end

  def cancel
    if @repair.awaiting_pick_up?
      if @repair.cancelled!
        @repair.cancel_time = Time.now
        @repair.save
        redirect_to @repair
      end
    else
      redirect_to @repair, alert: "Can't cancel"
    end
  end

  private
    def set_repair
      @repair = Repair.friendly.find(params[:id])
      authenticate_correct_user! @repair
    end

    def repair_params
      params.require(:repair).permit(:info, :device_id, :address_id, device_attributes: [:name, :color, :serial_number], address_attributes: [:line_1, :line_2, :lga])
    end
end
