class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	
	def self.provides_callback_for(provider)
		class_eval %Q{
			def #{provider}
				@user = User.find_for_oauth(request.env["omniauth.auth"], current_user)
        
				if @user.persisted?
          session["current_user_provider"] = "#{provider}"
          session["current_user_image"] = request.env['omniauth.auth'].info.image
					sign_in_and_redirect @user, event: :authentication
					set_flash_message(:notice, :success, kind: "#{provider}".capitalize) if is_navigational_format?
				else
					session["devise.#{provider}_data"] = env["omniauth.auth"]
					redirect_to new_user_registration_url
				end
			end
		}
	end

	[:twitter, :facebook, :linkedin, :github, :google_oauth2, :instagram].each do |provider|
		provides_callback_for provider
	end

	def after_sign_in_path_for(resource)
		if resource.email_verified?
			super resource
		else
			finish_user_registration_path
		end
	end
  
  def destroy_identity
    identity = Identity.where(provider: params[:provider]).first
    identity.destroy
    redirect_to edit_user_registration_url, notice: "Your #{params[:provider]} account was unlinked successfully"
  end

end