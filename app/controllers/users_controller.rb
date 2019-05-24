class UsersController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result
  end

  def new
  end

  def create
  end
end
