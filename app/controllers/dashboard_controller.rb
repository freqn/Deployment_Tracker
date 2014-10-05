class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @title = "- Deployments Dashboard"
    @deployments = Deployment.all
  end

end
