class CreateUsersCourses < ActiveRecord::Migration
  def self.up
    create_table :users_courses do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :users_courses
  end
end
