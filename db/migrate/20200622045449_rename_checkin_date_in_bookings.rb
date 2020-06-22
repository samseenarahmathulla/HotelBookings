class RenameCheckinDateInBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :checkin_date, :room_in_date
    rename_column :bookings, :checkout_date, :room_out_date
  end
end
