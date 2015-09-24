module ApplicationHelper
  
  def flash_class(level)
    case level
    when 'success' then "success"
    when 'alert' then "error"
    when 'notice' then "info"
    end
  end
  
  def flash_messages(flash_hash)
    flash_all = ""
    flash_hash.each do |k, v|
      flash_all += content_tag :div, class: "ui small closable #{flash_class(k)} message top fixed menu", id: "flash-messages" do
        content_tag(:i, "", class: "close icon") + content_tag(:span, v)
      end
    end
    flash_all.html_safe
  end
  
  def controller_action_class
    "#{params[:controller].split('/').join(' ')} #{params[:action]}"
  end
  
  def omniauth_provider_name(provider)
    provider.to_s == "google_oauth2" ? "Google+" : provider.to_s.titleize
  end
  
  def omniauth_provider_icon(provider)
    provider.to_s == "google_oauth2" ? "google plus" : provider.to_s
  end
  
  def current_user_provider
    session["current_user_provider"]
  end
  
  def current_user_image
    session["current_user_image"] || "square_image.png"
  end
  
end
