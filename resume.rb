class Resume < Sinatra::Base
  before do
    @title = nil
    @name, @street, @city, @state, @email, @github_link = ['John Wilkinson','Berkeley, CA','jcwilk@email.com']
    @street = nil #it'll hide the line if you omit

    @misc_sections = {
      'Objective' => 'Productivity!',
      'Skills' => 'Mad ones!'
    }
    @jobs = [
      #position, date string, company identification, description
      ['Software Engineer','April 2006 - April 2007','Scumsoft, Yosemite, CA','Wrote jello capture software.']
    ]
    @schools = [
      #degree, date string, school identification
      ['Computer Science','June 2006','Beer Academy']
    ]
    @footer_links = [
      ['http://www.google.com/','Find me here! Somehow...']
    ]
  end

  get "/" do
    haml :resume
  end
end