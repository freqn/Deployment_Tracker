class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @title = "- Users Home"
  end

end
