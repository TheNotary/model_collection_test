class AddUserIdAndCourseIdToCoursesUsers < ActiveRecord::Migration
  def self.up
    add_column :courses_users, :user_id, :integer
    add_column :courses_users, :course_id, :integer
  end

  def self.down
    remove_column :courses_users, :course_id
    remove_column :courses_users, :user_id
  end
end
