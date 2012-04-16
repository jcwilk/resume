class Resume
  #TODO: Use these to pull up specific non-hardcoded instances
  def self.find(*args)
    new
  end

  def self.first(*args)
    new
  end

  #TODO: Replace these with non-hardcoded values
  attr_reader :title, :name, :street, :city, :state, :email, :github_link

  def misc_sections
    {
      #header, array of bulletpoints
      'Objective' => ['Productivity!'],
      'Skills' => ['Mad ones!']
    }
  end

  def jobs
    [
      #position, date string, company identification, description
      ['Software Engineer','April 2006 - April 2007','Scumsoft, Yosemite, CA','Wrote jello capture software.']
    ]
  end

  def schools
    [
      #degree, date string, school identification
      ['Computer Science','June 2006','Beer Academy']
    ]
  end

  def footer_links
    [
      #link, desc
      ['http://www.google.com/','Find me here! Somehow...']
    ]
  end
end