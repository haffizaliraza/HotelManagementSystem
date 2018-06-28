class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.date :date
      t.string :detail

      t.timestamps
    end
  end
end
