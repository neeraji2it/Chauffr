class AdditionalChargesController < ApplicationController
  before_action :authenticate_user!
  layout 'drivers'
  
  def index
    @additionals = AdditionalCharge.all
  end
  
  def new
    @additional = AdditionalCharge.new
    @additionals = AdditionalCharge.all
    respond_to do |format|
      format.js
    end
  end
  
  def create
    @additionals = AdditionalCharge.all
    @additional = AdditionalCharge.new(additional_charge_params)
    @additional.save
    
    respond_to do |format|
      format.js
    end
  end
  
  private
  def additional_charge_params
    params.require(:additional_charge).permit!
  end
end