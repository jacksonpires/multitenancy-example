class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_current_user

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

end
