class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :room_no
      t.boolean :avalable , default: true

      t.timestamps
    end
  end
end
