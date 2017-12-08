class CreateEmployers < ActiveRecord::Migration[5.1]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :website
      t.text :address
      t.string :city
      t.string :state
      t.string :phone
      t.string :alternative_phone
      t.string :email
      
      t.timestamps
    end
  end
end
