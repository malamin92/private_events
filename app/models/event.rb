class Event < ActiveRecord::Base
	belongs_to :creator, :class_name => "User"
	has_many :attendee, :through => :invites
end
