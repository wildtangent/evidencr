class Post < ActiveRecord::Base
  
  # Allowed mass assignment fields
  attr_accessible :observation, :type, :user_id, :observed_on, :pupils, :pupil_ids, :category_ids, :upload_ids
  
  # Associations
  belongs_to :user
  has_and_belongs_to_many :pupils
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :uploads
  
  # Allow forms to update these associations
  accepts_nested_attributes_for :categories, :uploads
  
  # Validate stuff
  validates_presence_of :observation
  validates_presence_of :observed_on
  validates_presence_of :pupils
  
  # Sort by observed on date by default
  default_scope order("observed_on DESC")
  
  # Initialize new objects with the date set to today
  def initialize(attributes={})
    attr_with_defaults = {:observed_on => Date.today}.merge(attributes)
    super(attr_with_defaults)
  end
  
end
