class BusinessUnitsController < ApplicationController
  def index
    @business_units = BusinessUnit.all
  end

  def show
    @business_unit = BusinessUnit.find(params[:id])
  end

  def new
    @business_unit = BusinessUnit.new
  end

  def edit
    @business_unit = BusinessUnit.find(params[:id])
  end

  def create
    @business_unit = BusinessUnit.new(business_unit_params)

    if @business_unit.save
      redirect_to @business_unit
    else
      render 'new'
    end
  end

  def update
    @business_unit = BusinessUnit.find(params[:id])

    if @business_unit.update(business_unit_params)
      redirect_to @business_unit
    else
      render 'edit'
    end
  end

  def destroy
    @business_unit = BusinessUnit.find(params[:id])
    @business_unit.destroy

    redirect_to business_units_path
  end
  private
  def business_unit_params
    params.require(:business_unit).permit(:name)
  end
end
