class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    @user.save
    if @user.errors.any?
      render partial: 'error', user: @user, status: :bad_request
    end
  end

  def index
  end

  def edit
  end

  def params_user
    params.require(:user).permit(:email, :last_name, :first_name, :phone_number, :password)
  end
end
