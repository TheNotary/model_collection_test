class AddFnameToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :fname, :text
  end

  def self.down
    remove_column :users, :fname
  end
end
