class PostsController < InheritedResources::Base
  
  #belongs_to :user, :optional => true
  
  before_filter :get_pupils, :except => [:index, :destroy]
  before_filter :get_categories, :except => [:index, :destroy]
  before_filter :get_posted_pupils, :only => [:new, :edit, :create, :update, :edit]
  
  private
  def get_pupils
    @pupils = Pupil.order("first_name ASC")
  end
  
  def get_categories
    @categories = Category.all
  end
  
  def get_posted_pupils
    if params[:post] && params[:post][:pupil_ids].present?
      @posted_pupils = Pupil.find(params[:post][:pupil_ids])
    else 
      @posted_pupils = []
    end
  end
  
end
