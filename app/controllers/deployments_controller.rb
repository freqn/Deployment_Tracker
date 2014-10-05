class DeploymentsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @title = "- All deployment tickets"
    @deployments = Deployment.all
  end

  def new
    @title = "- Create a deployment ticket"
    @deployment = Deployment.new
    @applications = Application.all
  end

  def show
    @deployment = Deployment.find(params[:id])
    @title = "- " + @deployment.id
  end

  def create
    @deployment = Deployment.new

  end

  def options_from_collection_for_select
    @applications = Application.all
  end

end
