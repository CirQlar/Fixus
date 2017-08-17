class RepairsController < ApplicationController
  before_action :set_repair, only: [:show]
  
  def new
    @repair = Repair.new
  end

  def show
  end

  private
    def set_repair
      @repair = Repair.find(params[:id])
    end
end
