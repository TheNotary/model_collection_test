class User < ActiveRecord::Base
  has_many :course_assignments
  has_many :courses, :through => :course_assignments
  
  def enrollment
    courses = self.courses
    name_array = courses.map { |course| course.name }
    
    x = Enrollment.new(self, name_array)
    return x
  end
  
  def enrollment=(val)
    self.courses.delete_all
    val.each do |ele|
      self.courses.create!(:name => ele)
    end
  end
  
  
  class Enrollment < Array
    attr_accessor :parent
    
    def initialize(parent, array)
      super array
      @parent = parent
    end
    
    def <<(val)
      @parent.courses.create!(:name => val)
      super
    end
  end
  
end
