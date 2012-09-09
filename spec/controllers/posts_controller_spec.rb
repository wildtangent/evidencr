require 'spec_helper'

describe PostsController do
  
  before(:each) do
    @pupils = []
    @pupils << create(:pupil, first_name: "Bob", last_name: "Marley")
    @pupils << create(:pupil)

    @categories = [] 
    @categories << create(:category, name: "Creative Reasoning", short_name: "CR")
    @categories << create(:category)

    @post = create(:post, pupils: [@pupils.first], categories: [@categories.first])
    
  end
  
  it 'should assign a collection of pupils' do
    get(:show, :id => @post)
    assigns[:pupils].should == @pupils
  end
  
  it 'should assign a collection of categories' do
    get(:show, :id => @post)
    assigns[:categories].should == @categories.sort
  end
  
  it 'should assign a collection of pupils based on the model or posted params' do
    pending
  end
  
end