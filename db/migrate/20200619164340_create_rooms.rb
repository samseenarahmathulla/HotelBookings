class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.references :hotel, null: false, foreign_key: true
      t.string :name
      t.integer :number_of_guests
      t.timestamps
    end
  end
end
