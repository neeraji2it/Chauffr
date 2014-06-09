class VehiclesController < ApplicationController
  
  before_action :set_vehicle, only: ["edit","update", "destroy"]
  
  def index
    @vehicles = Vehicle.all
  end
  
  def new
    @vehicle = Vehicle.new
  end
  
  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      flash[:notice] = "Vehicle was created successfully."
      redirect_to vehicles_path
    else
      render :action => "new"
    end
  end
  
  def edit
    
  end
  
  def update
    if @vehicle.update(vehicle_params)
      flash[:notice] = "Vehicle was updated successfully."
      redirect_to vehicles_path
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @vehicle.destroy
    flash[:notice] = "Vehicle was deleted successfully."
    redirect_to vehicles_path
  end
  
  private
  
  def vehicle_params
    params.require(:vehicle).permit!
  end
  
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end
