class AddAttendingGuestToInvites < ActiveRecord::Migration
  def change
    add_reference :invites, :attending_guest, index: true, foreign_key: true
  end
end
