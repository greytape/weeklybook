class EventsController < ApplicationController
  def new
    @group = current_group
    @event = Event.new
  end

  def create
    event = Event.new(group: current_group, date_time: parsed_date_time, meeting_url: meeting_url, book: book)
    event.save!
    redirect_to current_group
  end

  def event_params
    params.require(:event).permit(:date_time)
  end

  def parsed_date_time
    DateTime.parse(params[:event][:date_time])
  end

  def meeting_url
    'http://www.example.comw'
  end

  def book
    Book.find_by(title: params.dig(:event, :book_title))
  end
end
