module PupilsHelper

  def other_pupils(pupils)   
    (pupils - [@pupil]).map{|pupil| 
      link_to(pupil.name, pupil_path(pupil))
    }  
  end
  
  def all_pupils(pupils)
    pupils.map{|pupil|
      link_to(pupil.name, pupil_path(pupil))
    }
  end
  
  def popover_content(post)
    CGI.escapeHTML(render post.uploads)
  rescue
    nil
  end
  
end
