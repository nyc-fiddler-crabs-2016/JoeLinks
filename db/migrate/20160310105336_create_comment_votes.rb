class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes do |t|
      t.references :comment, null: false, index: true
      t.references :user, null: false, index: true

      t.timestamps null: false
    end
  end
end
