class ApplicationsController < ApplicationController
  before_filter :authenticate_user!
  before_action :make_application, only: [:new ]
  before_action :find_application, only: [:update, :destroy, :show]

  def index
    @title = "- All Applications"
    @applications = Application.all
  end

  def new
    @title = "- Create an Applications"
  end

  def show
    @title = "- Application: " + @application.name
  end

  def create
    @new_app = Application.new(application_params)
    if @new_app.save
      redirect_to new_application_path
    end
  end

  def update

  end

  def destroy
    @found_app.destroy
    redirect_to new_application_path
  end

  def make_application
      @application = Application.new
  end

  def find_application
      @found_app = Application.find(params[:id])
  end

  private

  def application_params
    params.require(:application).permit(:name)
  end

end
