class AddTokenToUser < ActiveRecord::Migration
  def up
    add_column :users, :token, :string, index: true
  end

  def down
    remove_column :users, :token
  end
end
