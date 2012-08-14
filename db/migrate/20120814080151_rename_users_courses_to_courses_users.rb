class RenameUsersCoursesToCoursesUsers < ActiveRecord::Migration
  def self.up
    rename_table :users_courses, :courses_users
  end

  def self.down
    rename_table :courses_users, :users_courses
  end
end
