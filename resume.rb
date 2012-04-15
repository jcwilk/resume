class Resume < Sinatra::Base
  before do
    @title = nil
    @name, @street, @city, @state, @email, @github_link = nil
  end

  get "/" do
    haml :resume
  end
end