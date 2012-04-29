module PostsHelper
  
  def pupils_and_ids
    @pupils.map{|pupil| [pupil.id, pupil.name]}
  end
  
end
