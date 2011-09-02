class PadmaAccountOnInquirie < ActiveRecord::Migration
  def self.up
    add_column :inquiries, :padma_account, :string
  end

  def self.down
    remove_column :inquiries, :padma_account
  end
end
