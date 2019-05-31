class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

  def new
    @mission = Mission.new
    @expertise = Expertise.find(params[:expertise_id])
  end

  def create
    # @user = current_user
    # @mission = Mission.new(mission_params)
    # @mission.user = @user
    @expertise = Expertise.find(params[:expertise_id])
    @mission = current_user.missions.build(mission_params)
    @mission.expertise = @expertise
    @mission.price = (@mission.end_date - @mission.starting_date) * @expertise.daily_rate

    if @mission.save
      redirect_to mission_path(@mission)
    else
      @expertise = Expertise.new
      render :new  #"users/show"
    end
  end

  def edit
    @mission = Mission.find(param[:id])
    @user = current_user
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.update(mission_params)
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
    redirect_to missions_path
  end

  def mymission
    @user = current_user
    @mymissions = Mission.where(user_id: @user.id)
  end

  def myexpertmission
    @myexpertmissions = current_user.expert_missions
  end

  private

  def mission_params
    params.require(:mission).permit(:starting_date, :end_date)
  end
end
