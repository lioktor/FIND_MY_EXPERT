class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

  def new
    @mission = Mission.new
  end

  def create
    @user = User.find(params[:user_id])
    @mission = Mission.new(mission_params)
    @mission.user = @user
    if @mission.save
      redirect_to user_path(@user)
    else
      @expertise = Expertise.new
      render "users/show"
    end
  end

  def edit
    @mission = Mission.find(param[:id])
    @user = User.find(params[:user_id])
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.update(mission_params)
  end

  def show
    # @mission = Mission.find(params[:id])
  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
    redirect_to missions_path
  end

  private

  def mission_params
    params.require(:mission).permit(:price, :starting_date, :end_end, :status, :user_id, :expertise_id)
  end
end
