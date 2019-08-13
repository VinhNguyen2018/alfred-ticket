class UsersController < ApplicationController
  before_action :authenticate_user!

  def update
    raise
    @user = current_user
  end
end
