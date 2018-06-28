class CreateRoomBokings < ActiveRecord::Migration[5.0]
  def change
    create_table :room_bokings do |t|
      t.belongs_to :room, foreign_key: true
      t.belongs_to :booking, foreign_key: true
      t.integer :charges
      t.integer :days

      t.timestamps
    end
  end
end
