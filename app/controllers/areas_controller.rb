class AreasController < ApplicationController
  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:id])
  end

  def new
    @area = Area.new
  end

  def edit
    @area = Area.find(params[:id])
  end

  def create
    @area = Area.new(area_params)

    if @area.save
      redirect_to @area
    else
      render 'new'
    end
  end

  def update
    @area = Area.find(params[:id])

    if @area.update(area_params)
      redirect_to @area
    else
      render 'edit'
    end
  end

  def destroy
    @area = Area.find(params[:id])
    @area.destroy

    redirect_to areas_path
  end

  private
  def area_params
    params.require(:area).permit(:name, :business_unit_id)
  end
end
