class AddAttendingEventsRefToInvite < ActiveRecord::Migration
  def change
    add_reference :invites, :attending_event, index: true, foreign_key: true
  end
end
