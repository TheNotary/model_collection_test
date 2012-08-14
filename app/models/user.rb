class User < ActiveRecord::Base
  has_many_and_belongs_to :courses
  
  def enrollment
    courses = self.courses
    name_array = courses.map { |course| course.name }
    
    return name_array
  end
  
  #def enrollment.push(val)
  #  puts "hello"
  #end
  def enrollment=(val)
    self.courses.delete_all
    self.courses.create!(:name => val)
  end
  
  #def enrollment.push(val)
  #  puts "hello"
  #  return nil
  #end
  
  #def enrollment.<<(val)
  #  puts "hello"
  #  return nil
  #end
  
  class Enrollment
    def <<(val)
      require 'pry';binding.pry
      puts "hello"
    end
  end
  
end
