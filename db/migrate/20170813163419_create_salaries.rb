class CreateSalaries < ActiveRecord::Migration[5.0]
  def change
    create_table :salaries do |t|
      t.belongs_to :employ, foreign_key: true
      t.integer :amount
      t.string :detail

      t.timestamps
    end
  end
end
