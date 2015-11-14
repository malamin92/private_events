class Invite < ActiveRecord::Base
	belongs_to :attending_guest, :class => "User"
	belongs_to :attending_event, :class => "Event"
end
