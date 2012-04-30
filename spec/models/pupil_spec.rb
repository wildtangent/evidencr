require 'spec_helper'

describe Pupil do

  before do
    @pupil = create(:pupil)
  end
  
  it 'should join the first and last names to make a full name' do
    @pupil.name.should == "John Doe" 
  end
  
  it 'should return a profile image' do
    @pupil.profile.should == "profile.png"
  end
  
end