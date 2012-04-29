class Pupil < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  
  validates_presence_of :first_name, :last_name
  
  has_and_belongs_to_many :posts
  
  def name
    [first_name, last_name].join(" ")
  end
  
  def profile
    "profile.png"
  end

end
