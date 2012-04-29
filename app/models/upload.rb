class Upload < ActiveRecord::Base
  
  belongs_to :user
  has_and_belongs_to_many :posts
  
  attr_accessible :file, :user_id
  
  include Rails.application.routes.url_helpers
  mount_uploader :file, PhotoUploader
  
  
end
