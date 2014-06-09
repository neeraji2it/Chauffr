class ProfilesController < ApplicationController
  before_action :authenticate_user!, :except => ['contact']
  
  def index
    @user = current_user
  end
  
  def contact
    
  end
end