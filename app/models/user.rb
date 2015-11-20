class User < ActiveRecord::Base
	has_many :created_events, :foreign_key => "creator_id", :class_name => "Event"
	has_many :invites, :foreign_key => :attending_guest_id
	has_many :attended_events, through: :invites, source: :attending_event
end
