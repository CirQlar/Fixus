class RepsController < ApplicationController
  layout 'maint'
  before_action :set_rep, only: [:show, :edit, :update]

  def index
  end

  def show
  end

  def new
    @rep = Rep.new
  end

  def create
    @rep = Rep.new(rep_params)

    if @rep.save
      redirect_to @rep
    else
      render :new
    end
  end

  private
    def set_rep
      @rep = Rep.friendly.find(params[:id])
    end

    def rep_params
      params.require(:rep).permit(:name, :email, :age, :gender, :university)
    end
end
