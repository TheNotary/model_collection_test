class AddUserIdToCourses < ActiveRecord::Migration
  def self.up
    add_column :courses, :user_id, :integer
    add_column :courses, :courses, :string
  end

  def self.down
    remove_column :courses, :user_id
    remove_column :courses, :courses
  end
end
