class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :phone, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :start_booking, null: false
      t.date :end_booking, null: false
      t.timestamps
    end
  end
end
