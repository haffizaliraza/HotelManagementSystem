class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :cnic
      t.string :phone
      t.string :email
      t.string :address
      t.integer :bill
      t.integer :other_charges
      t.integer :sub_total
      t.integer :discount
      t.integer :total
      t.date :check_in
      t.date :check_out

      t.timestamps
    end
  end
end
