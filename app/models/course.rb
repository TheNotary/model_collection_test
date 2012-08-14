class Course < ActiveRecord::Base
  has_and_belongs_to_many :user
  #has_many :course_assignments
  #has_many :users, :through => :course_assignments
end
