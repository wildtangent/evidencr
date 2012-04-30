require 'spec_helper'

describe PupilsHelper do

  before do
    @bob = create(:pupil, first_name: "Bob", last_name: "Marley")
    @jimmy = create(:pupil, first_name: "Jimmy", last_name: "Cliff")
    @dylan = create(:pupil, first_name: "Bob", last_name: "Dylan")
    @pupils = [@bob, @jimmy, @dylan]
    
    @pupil = @jimmy
  end
  
  it 'should map a list of pupil names and links, excluding the original pupil' do
    other_pupils(@pupils).should == ["<a href=\"/pupils/#{@bob.id}\">#{@bob.name}</a>", "<a href=\"/pupils/#{@dylan.id}\">#{@dylan.name}</a>"]
    other_pupils(@pupils).should_not include(@jimmy.name)
  end
  
  it 'should map a list of pupil names and links, including the original pupil' do
    all_pupils(@pupils).should == ["<a href=\"/pupils/#{@bob.id}\">#{@bob.name}</a>", "<a href=\"/pupils/#{@jimmy.id}\">#{@jimmy.name}</a>", "<a href=\"/pupils/#{@dylan.id}\">#{@dylan.name}</a>"]
  end

end