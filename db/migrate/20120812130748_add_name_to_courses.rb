class AddNameToCourses < ActiveRecord::Migration
  def self.up
    add_column :courses, :name, :text
  end

  def self.down
    remove_column :courses, :name
  end
end
