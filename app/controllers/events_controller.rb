class EventsController < ApplicationController
  def new
    @group = current_group
    @event = Event.new
  end

  def create
    event = Event.new(group: current_group, date_time: parsed_date_time, meeting_url: meeting_url)
    event.save!
    byebug
    render current_group
  end

  def event_params
    params.require(:event).permit(:date_time)
  end

  def current_group
    Group.find_by(id: params[:group_id])
  end

  def parsed_date_time
    DateTime.parse(params[:event][:date_time])
  end

  def meeting_url
    'http://www.example.comw'
  end
end
