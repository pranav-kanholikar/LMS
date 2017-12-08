class CreateLeaves < ActiveRecord::Migration[5.1]
  def change
    create_table :leaves do |t|
      t.belongs_to :employee, foreign_key: true
      t.date :from_date
      t.date :to_date
      t.integer :no_of_days

      t.timestamps
    end
  end
end
