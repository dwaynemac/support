class CreateDrcUsers < ActiveRecord::Migration
  def self.up
    create_table :drc_users do |t|
      t.cas_authenticatable
      t.timestamps
    end
    add_index :users, :username, :unique => true
  end

  def self.down
    drop_table :drc_users
  end
end
