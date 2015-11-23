class Event < ActiveRecord::Base

	scope :past, -> { where("date < ?", Time.now.strftime("%m/%d/%Y")) }
	scope :future, -> { where("date > ?", Time.now.strftime("%m/%d/%Y")) }

	belongs_to :creator, :class_name => "User"
	has_many :invites, :foreign_key => :attending_event_id
	has_many :attendees, :through => :invites, :source => :attending_guest

	# def self.past
	# 	self.where("date < ?", Time.now.strftime("%m/%d/%Y"))
	# end

	# def self.future
	# 	self.where("date > ?", Time.now.strftime("%m/%d/%Y"))
	# end
end
