require 'spec_helper'

describe PostsHelper do
  
  it 'should map pupil names and ids in an array' do
    @pupils = [create(:pupil)]
    pupils_and_ids.should == [[@pupils.first.id, @pupils.first.name]]
  end
  
end