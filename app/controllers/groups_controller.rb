class GroupsController < ApplicationController
  def new
    @group = Group.new
    @group.users << current_user
  end

  def show
    @group = Group.find_by(id: params[:id])
  end

  def create
    @group = Group.new(group_params)
    @group.save
    GroupsUser.create!(group: @group, user: current_user)
    redirect_to current_user
  end

  def admin
    @group = Group.find_by(id: params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
