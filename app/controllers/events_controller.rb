class EventsController < ApplicationController
	def new
		@event = Event.new
	end

	def create
		@event = current_user.created_events.build(event_params)
		if @event.save
			flash[:success] = "Event created"
			redirect_to @event
		else
			flash.now[:danger] = "Event was not created successfully, try again"
			render 'new'
		end
	end

	def show
		@event = Event.find(params[:id])
		@host = @event.creator
		@attendees = @event.attendees
		
	end

	def index
		@events = Event.all.order(created_at: :desc)
		@past_events = Event.past
		@upcoming_events = Event.future
	end



	private

	def event_params
		params.require(:event).permit(:title, :description, :date, :location)
	end
end
