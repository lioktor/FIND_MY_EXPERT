class ExpertisesController < ApplicationController
  def index
    @expertises = Expertise.where.not(latitude: nil, longitude: nil)

    @markers = @expertises.map do |expertise|
      {
        lat: expertise.latitude,
        lng: expertise.longitude
      }
    end

    if params[:query].present?
      sql_query = "category ILIKE :query OR description ILIKE :query"
      @expertises = Expertise.where(sql_query, query: "%#{params[:query]}%")
    else
      @expertises = Expertise.all
    end

  end

  def new
    @expertise = Expertise.new
  end

  def create
    # @expertise = Expertise.new(expertise_params)
    # @expertise.user = current_user

    @expertise = current_user.expertises.build(expertise_params)

    if @expertise.save
      redirect_to expertise_path(@expertise)
    else
      render :new
    end
  end

  def edit
    @expertise = Expertise.find(params[:id])
  end

  def update
    @expertise = Expertise.find(params[:id])
    @expertise.update(expertise_params)
  end

  def show
    @expertise = Expertise.find(params[:id])
  end

  def destroy
    @expertise = Expertise.find(params[:id])
    @expertise.destroy
    redirect_to expertises_path
  end

  private
  def expertise_params
    params.require(:expertise).permit(:category, :description, :address, :daily_rate)
  end
end
