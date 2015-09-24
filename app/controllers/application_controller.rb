class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :ensure_signup_complete  
  before_action :authenticate_user!
  
  layout :layout_by_resource
  
  private

  def ensure_signup_complete
    # Ensure we don't go into an infinite loop
    # flash[:alert] = "Hello world"
    return if controller_name == 'static' || controller_name == 'confirmations' || controller_name == 'sessions' || (controller_name == 'registrations' and action_name != 'edit')

    # Redirect to the 'finish_signup' page if the user
    # email hasn't been verified yet
    if current_user && !current_user.email_verified?
      redirect_to finish_user_registration_path, alert: "Please finish your #{view_context.link_to "registration", finish_user_registration_url }  before continuing.".html_safe
    end
  end
  
  def layout_by_resource
    if devise_controller? && (resource_name == :user && controller_name != "registrations" && action_name == "edit")
      "devise"
    else
      "application"
    end
  end
end
