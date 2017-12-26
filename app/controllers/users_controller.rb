class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @user = current_user
    # @repair = Repair.last
    # unless @repair.blank?
    #   @device = @repair.device
    #   @address = @repair.address
    # end
  end

end
