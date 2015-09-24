class Users::RegistrationsController < Devise::RegistrationsController

  def finish
    # authorize! :update, @user 
    if request.patch? && params[:user] #&& params[:user][:email]
      @user = current_user
      if @user.update(user_params)
        @user.skip_reconfirmation!
        sign_in(@user, :bypass => true)
        redirect_to root_path, notice: 'Your profile was successfully updated.'
      end
    end
  end
  
  private
  
    def user_params
      accessible = [:username, :email, :password, :password_confirmation] # extend with your own params
      params.require(:user).permit(accessible)
    end
  
end
