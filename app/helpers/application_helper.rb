module ApplicationHelper
  def current_group
    return unless params[:group_id]

    Group.find_by(id: params[:group_id])
  end
end
