class Course < ActiveRecord::Base
  has_many :course_assignments
  has_many :users, :through => :course_assignments
end
