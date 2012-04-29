class Category < ActiveRecord::Base

  attr_accessible :name, :short_name
  
  validates_presence_of :name, :short_name
  
  has_and_belongs_to_many :posts
  
  default_scope order("name ASC")

end
