module PostsHelper
  
  # Map an array of all the pupils and their IDs for use with suggestion box
  def pupils_and_ids
    @pupils.map{|pupil| [pupil.id, pupil.name]}
  end
  
end
