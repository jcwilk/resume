require 'spec_helper'

describe ResumeApp do
  def app
    @app ||= ResumeApp
  end

  describe 'GET /' do
    it 'should be successful' do
      get '/'
      last_response.should be_ok
    end
  end

  describe 'GET /id' do
    it 'should be successful' do
      get '/test'
      last_response.should be_ok
    end
  end
end