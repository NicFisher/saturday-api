# frozen_string_literal: true
class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  enable_extension "uuid-ossp"
  def change
    create_table :users do |t|
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.string :first_name, default: "", null: false
      t.string :last_name,  default: "", null: false
      t.string :photo
      t.string :email, default: "", null: false
      t.string :encrypted_password, default: "", null: false
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.integer :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.text :authentication_token
      t.datetime :authentication_token_created_at
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :authentication_token, unique: true
  end
end
