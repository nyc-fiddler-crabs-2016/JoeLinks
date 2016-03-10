class CreatePosts < ActiveRecord::Migration
  def change
    create_table :post do |t|
      t.string :title, null: false
      t.string :url, null: false

      t.references  :user, null: false, index: true

      t.timestamps, null: false
    end
  end
end
