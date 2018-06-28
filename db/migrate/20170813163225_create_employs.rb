class CreateEmploys < ActiveRecord::Migration[5.0]
  def change
    create_table :employs do |t|
      t.string :name
      t.string :cnic
      t.string :phone_no
      t.integer :salary

      t.timestamps
    end
  end
end
