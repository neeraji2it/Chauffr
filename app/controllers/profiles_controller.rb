class ProfilesController < ApplicationController
  before_action :authenticate_user!
  layout 'drivers'
  
  def index
    @user = current_user
  end
end