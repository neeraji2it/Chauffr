class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    random = (0...5).map { [*'0'..'9',*'a'..'z'][rand(26)] }.join
    unicode = "#{@user.first_name}#{random}"
    @user.unicode = unicode
    if @user.save!
      flash[:notice] = "You will receive an email with instructions about how to confirm your account in a few minutes."
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  def user_params
     params.require(:user).permit!
  end
end