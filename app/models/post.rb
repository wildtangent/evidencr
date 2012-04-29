class Post < ActiveRecord::Base
  
  attr_accessible :observation, :type, :user_id, :observed_on, :pupils, :pupil_ids, :category_ids, :upload_ids
  
  belongs_to :user
  has_and_belongs_to_many :pupils
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :uploads
  
  accepts_nested_attributes_for :categories, :uploads
  
  validates_presence_of :observation
  validates_presence_of :observed_on
  validates_presence_of :pupils
  
  default_scope order("observed_on DESC")
  
  def initialize(attributes=nil)
    attr_with_defaults = {:observed_on => Date.today}.merge(attributes)
    super(attr_with_defaults)
  end
  
end
