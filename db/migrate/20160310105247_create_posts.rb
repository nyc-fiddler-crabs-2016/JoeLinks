class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :url
      t.text   :body

      t.references  :user, null: false, index: true

      t.timestamps null: false
    end
  end
end
