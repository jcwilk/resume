class Resume < Sinatra::Base
  before do
    @title = nil
    @name, @street, @city, @state, @email, @github_link = nil
    @misc_sections = {
      'Goals' => 'Productivity!'
    }
    @jobs = [
      #position, date string, company identification, description
      ['Software Engineer','April 2006 - April 2007','Scumsoft, Yosemite, CA','Wrote jello capture software.']
    ]
    @schools = [
      #degree, date string, school identification
      ['Computer Science','June 2006','Beer Academy']
    ]
  end

  get "/" do
    haml :resume
  end
end