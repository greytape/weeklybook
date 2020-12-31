class UsersController < ApplicationController
  before_action :split_user_name, only: :create

  def new
    @user = User.new
  end

  def create
    User.new(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name)
  end

  def split_user_name
    full_name = params.dig(:user, :full_name)
    return unless full_name

    last_name = full_name.split.last
    first_name = full_name.delete_suffix(last_name).strip

    params["user"].delete(:full_name)
    params["user"]["first_name"], params["user"]["last_name"] = first_name, last_name
  end
end
