module PupilsHelper

  # Map a list of all pupils except the current one and a link to their pages
  def other_pupils(pupils)   
    (pupils - [@pupil]).map{|pupil| 
      link_to(pupil.name, pupil_path(pupil))
    }  
  end
  
  # Map a list of all pupils and links to their pages
  def all_pupils(pupils)
    pupils.map{|pupil|
      link_to(pupil.name, pupil_path(pupil))
    }
  end
  
end
