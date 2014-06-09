class SpecialDaysController < ApplicationController
  add_breadcrumb "Home", :homes_path
  
  def new
#    add_breadcrumb "New",new_special_day_path
    @special_day = SpecialDay.new
  end
  
  def create
    @special_day = SpecialDay.new(special_day_params)
    if @special_day.save
      flash[:notice] = "Special Day was successfully created."
      redirect_to fares_path
    else
      render :action => "new"
    end
  end
  
  private
  
  def special_day_params
    params.require(:special_day).permit!
  end
end