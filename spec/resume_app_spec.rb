require 'spec_helper'

describe ResumeApp do
  def app
    @app ||= ResumeApp
  end

  describe 'Get /' do
    it 'should be successful' do
      get '/'
      last_response.should be_ok
    end
  end
end