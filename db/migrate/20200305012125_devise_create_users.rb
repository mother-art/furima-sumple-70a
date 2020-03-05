class DeviseCreateUsers < ActiveRecord::Migration[5.2]
    def change
      create_table :users do |t|
        t.string :nickname,           null:false  
        t.string :name,               null:false  
        t.string :name_kana,          null:false  
        t.string :sex,                null:false
        t.string :tel,                null:false  
        t.string :email,              null: false 
        t.string :password,           null: false 
        t.string :encrypted_password, null: false 
  
        ## Recoverable
        t.string   :reset_password_token
        t.datetime :reset_password_sent_at
  
        ## Rememberable
        t.datetime :remember_created_at
  
        t.timestamps null: false
      end
      add_index :users, :tel,                  unique: true
      add_index :users, :email,                unique: true
      add_index :users, :reset_password_token, unique: true
  
    end
  end
  