class CourseAssignments < ActiveRecord::Migration
  def self.up
    create_table :course_assignments, :id => false do |t|
      t.column :course_id, :integer
      t.column :user_id, :integer
    end
  end

  def self.down
    drop_table :course_assignments
  end
end
