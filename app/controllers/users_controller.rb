class UsersController < ApplicationController
  before_action :authenticate_user!

  def update
    @user = current_user
  end

  def create

  end
end
