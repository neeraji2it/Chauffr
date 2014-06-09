class HomesController < ApplicationController
  before_action :authenticate_user!, :only => [:contact, :save_contact, :message]
  def index
  end
  
  def contact
    @contact = Contact.new
    @contact.user_id = current_user.id
    @name = "#{current_user.first_name} #{current_user.last_name}"
  end
  
  def save_contact
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to message_homes_path
    else
      render :action => :contact
    end
  end
  
  def message
    @name = "#{current_user.first_name} #{current_user.last_name}"
  end
  
  private
  def contact_params
     params.require(:contact).permit!
  end
end