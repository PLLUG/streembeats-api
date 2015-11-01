class CreatePlaylists < ActiveRecord::Migration
  def up
    create_table :playlists do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.datetime :created_at, null: false, default: "CURRENT_TIMESTAMP"
      t.datetime :updated_at, null: false, default: "CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"
      t.timestamps null: false
    end
  end

  def down
    drop_table :playlists
  end
end
