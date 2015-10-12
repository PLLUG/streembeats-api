class CreateUsers < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first_name
      t.string :last_name
      t.datetime :created_at, null: false, default: "CURRENT_TIMESTAMP"
      t.datetime :updated_at, null: false, default: "CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP"

      t.timestamps null: false
    end
  end
end
