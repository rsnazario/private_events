class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    rename_column :attendances, :creator_id, :attendee # user_id
    rename_column :attendances, :event_id, :attended_event # event_id
  end
end
