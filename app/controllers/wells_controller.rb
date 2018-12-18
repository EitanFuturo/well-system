class WellsController < ApplicationController
  def index
    @wells = Well.all
  end

  def show
    @well = Well.find(params[:id])
  end

  def new
    @well = Well.new
  end

  def edit
    @well = Well.find(params[:id])
  end

  def create
    @well = Well.new(well_params)

    if @well.save
      redirect_to @well
    else
      render 'new'
    end
  end

  def update
    @well = Well.find(params[:id])

    if @well.update(well_params)
      redirect_to @well
    else
      render 'edit'
    end
  end

  def destroy
    @well = Well.find(params[:id])
    @well.destroy

    redirect_to wells_path
  end
  private
  def well_params
    params.require(:well).permit(:name, :area_id, :field_id, :depth)
  end
end
