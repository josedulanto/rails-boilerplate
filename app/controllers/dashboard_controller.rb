class DashboardController < ApplicationController

  def index
    flash[:notice] = "Hello from the DashboardController!"
  end

end
