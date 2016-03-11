class CreatePostVotes < ActiveRecord::Migration
  def change
    create_table :post_votes do |t|
      t.references :post, null: false, index: true
      t.references :user, null: false, index: true

      t.timestamps null: false
    end
  end
end
