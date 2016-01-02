class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.integer :position
      t.integer :upvote
      t.integer :downvote

      t.timestamps null: false
    end
  end
end
