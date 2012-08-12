require 'spec_helper'

describe 'User model' do
  
  before :each do
    @user = User.create
    @user.courses.create(:name => "Ruby Reloaded")
  end
  
  describe '@user.enrollment' do
    it 'should be array' do
      @user.enrollment.should be_kind_of Array
    end
    
    it 'should be able to have more names pushed to it' do
      lambda do
        @user.enrollment << "skiing"
      end.should change(@user.courses, :count).by(1)
      
    end
    
  end
  
  
end
