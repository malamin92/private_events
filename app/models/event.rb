class Event < ActiveRecord::Base
	belongs_to :creator, :class_name => "User"
	has_many :invites, :foreign_key => :attending_event_id
	has_many :attendees, :through => :invites, :source => :attending_guest
end
