require 'spec_helper'

describe Post do

  before do
    @post = create(:post)
  end
  
  it 'initialize with todays date' do
    @post.observed_on.should == Date.today
  end
  
  it 'should be valid' do
    @post.valid?.should be_true
  end
  
  it 'should not be valid' do
    @post.observation = nil
    @post.valid?.should be_false
  end
  
end