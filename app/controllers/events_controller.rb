class EventsController < ApplicationController

  def index
    @events = Event.all
    respond_to do |format|
      format.html
      format.json{ render status: 200, json: @events }
    end
  end

  def show
    render status: 200, json: @events
  end

  private
  # You actually don't have to put created at and updated at since those are for your timestamps
  def event_params
    params.require(:event).permit(:title, :organizer, :focus_area, :description, :start_date, :end_date, :start_time, :end_time, :address, :created_at, :updated_at)
  end
end
