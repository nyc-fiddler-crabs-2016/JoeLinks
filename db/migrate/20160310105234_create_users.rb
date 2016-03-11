class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false # unique: true
      t.string :email, null: false
      t.string :password_digest, null: false
      t.text   :description

      t.timestamps null: false
    end
  end
end
