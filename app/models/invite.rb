class Invite < ActiveRecord::Base
	belongs_to :attending_guest, :class_name => "User"
	belongs_to :attending_event, :class_name => "Event"
end
