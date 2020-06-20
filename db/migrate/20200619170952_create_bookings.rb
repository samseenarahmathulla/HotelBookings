class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :amount
      t.date :checkin_date
      t.date :checkout_date
      t.timestamps
    end
  end
end
