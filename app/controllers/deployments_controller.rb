class DeploymentsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @title = "- All Deployment Tickets"
    @deployments = Deployment.all
  end

  def new
    @title = "- Create a Deployment Ticket"
    @deployment = Deployment.new
    @applications = Application.all
  end

  def show
    @deployment = Deployment.find(params[:id])
    @title = "- " + @deployment.name
  end

  def create
    @deployment = Deployment.new(deployment_params)
    if @deployment.save
      flash[:notice] = "Deployment Ticket Created"
      redirect_to deployments_path
    else
      flash[:notice] = "Error"
      redirect_to new_deployment_path
    end
  end

  def options_from_collection_for_select
    @applications = Application.all
  end

  private

  def deployment_params
    params.require(:deployment).permit(:application_id, :name, :deployment_date)
  end

end
