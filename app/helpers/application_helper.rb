module ApplicationHelper
  def showImage(result)
    url =  parseAttr(result, 'image')
    if url
      image_tag url
    else
      "Cannot find image."
    end
  end

  def parseAttr(result, attr)
    case attr
    when 'image'
      if result['show'] && result['show']['image'] && result['show']['image']
        result['show']['image']['original']
      end
    when 'name'
      if result['show']
        result['show']['name'] || 'No Title.'
      end
    when 'summary'
      if result['show']
        result['show']['summary'].try(:html_safe) || 'No Summary.'
      end
    end
  end
end
