class Resume < Sinatra::Base
  before do
    @title = nil
    @name, @street, @city, @state, @email, @github_link = ['John Wilkinson','Berkeley, CA','jcwilk at gmail.com','http://github.com/jcwilk']
    @street = nil #it'll hide the line if you omit

    @misc_sections = {
      'Objective' => 'Productivity!',
      'Skills' => 'Mad ones!'
    }
    @jobs = [
      #position, date string, company identification, description
      [
        'Rails Engineer with API/Services focus',
        'Feb 2010 to March 2012',
        'Howcast Media, San Francisco, CA',
        'Helped work towards rebuilding an oversized 2.3 app into satellite SOA parts running on Engine Yard Cloud. Broke users code/db into its own dedicated SSO and API service. Worked with management to architect next generation of SOA apps to replace the legacy app. Replaced in-house transcoding system with 3rd party integration to Zencoder while maintaining legacy formats.'
      ],
      [
        'Rails Engineer',
        'Summer 2007 to Fall 2009',
        'CrystalCommerce, Seattle, WA',
        'Worked with one to two other developers and the CEO on a rails 2.x app which provided a platform storefront and backend designed for inventory maintenance of tens of thousands of closely related collectibles across dozens of clients and domainnames. Integrated ActiveMerchant into a new checkout system. Designed a simple web-based POS to reuse as much behavior from the checkout system as possible.'
      ]
    ]
    @schools = [
      #degree, date string, school identification
      ['BS in Computer Science','June 2008','Seattle University, Seattle, WA']
    ]
    @footer_links = [
      ['http://jcwilk-resume.heroku.com/','Heroku hosted'],
      ['http://github.com/jcwilk/resume','Github coded']
    ]
  end

  get "/" do
    haml :resume
  end
end