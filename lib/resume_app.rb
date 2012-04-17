class ResumeApp < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__),'..')

  get "/?" do
    @resume = Resume.first
    haml :resume
  end

  get "/:id" do
    @resume = Resume.find(params[:id])
    haml :resume
  end
end