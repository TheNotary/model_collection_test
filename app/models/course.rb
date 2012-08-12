class Course < ActiveRecord::Base
  belongs_to :user
  attr_accessor :courses
  
  def all
    return ["swimming"]
    
  end
  
  
end
