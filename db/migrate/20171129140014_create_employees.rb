class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.belongs_to :employer, foreign_key: true
      t.belongs_to :role, foreign_key: true
      t.belongs_to :team, foreign_key: true
      
      
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :address
      t.string :city
      t.string :state
      t.datetime :date_of_join
      t.datetime :date_of_termination
      
      t.timestamps
      
      
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      # Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable
    end
    add_index :employees, :email,                unique: true
    add_index :employees, :reset_password_token, unique: true
  end
end
