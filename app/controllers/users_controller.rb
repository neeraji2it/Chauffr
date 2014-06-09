class UsersController < Devise::RegistrationsController  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to contact_profiles_path
    end
  end
end