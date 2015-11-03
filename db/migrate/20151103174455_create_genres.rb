class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :title
      t.string :description
      t.string :wikipedia_link
      t.datetime :created_at, null: false, default: "CURRENT_TIMESTAMP"
      t.datetime :updated_at, null: false, default: "CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"
      t.timestamps null: false
    end
  end
end
