class Event < ActiveRecord::Base
	belongs_to :creator, :class_name => "User"
	has_many :attendees, :through => :invites, :source => :attending_event
end
