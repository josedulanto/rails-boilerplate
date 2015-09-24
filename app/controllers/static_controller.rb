class StaticController < ApplicationController
  
  skip_before_action :authenticate_user!
  layout "static"
  
  def index
  end
  
end
