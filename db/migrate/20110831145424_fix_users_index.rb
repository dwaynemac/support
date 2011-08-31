class FixUsersIndex < ActiveRecord::Migration
  def self.up
    remove_index :users, :username
    add_index :drc_users, :username, :unique => true
  end

  def self.down
    add_index :users, :username, :unique => true
    remove_index :drc_users, :username
  end
end
