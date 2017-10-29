class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @repair = Repair.last
    @device = @repair.device
    @address = @repair.address
  end

end
