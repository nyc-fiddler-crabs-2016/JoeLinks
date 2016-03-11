class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :url # maybe a muliple column constraint here
      t.text   :body

      t.references  :user, null: false, index: true # nice

      t.timestamps null: false
    end
  end
end
