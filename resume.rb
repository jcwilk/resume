class Resume < Sinatra::Base
  before do
    @title = 'John Wilkinson'
    @name, @city, @state, @email, @github_link = ['John Wilkinson','Berkeley','CA','jcwilk at gmail.com','http://github.com/jcwilk']
    @street = nil #it'll hide the line if you omit

    @misc_sections = {
      'Objective' => [
        'To build, enhance, and refactor innovative web projects and experiment with new technologies as a part of an intelligent, motivated, and cooperative team.'
      ],
      'Skills' => [
        'Well versed in Ruby, proficient in JavaScript, and adequate in Python, C++, BASH, and Java',
        'Experienced with RSpec, Capybara, Jasmine, mocking, and when and when not to use them',
        'Built a number of RESTful APIs and is aware of the cost/value tradeoffs inherent in a maintainable service',
        'At home on the MySQL CLI and able to optimize ActiveRecord through the stack for a given query',
        'Eager to play devil\'s advocate and wrestle out blockades before too much code has been invested',
        'Works refactoring in as an inherent part of moving forward with development to keep technical debt down'
      ],
      'Preferred Development Style' => [
        'git with something very similar to <a href="http://scottchacon.com/2011/08/31/github-flow.html">Github Workflow</a>',
        'Ubuntu, RVM, RubyMine/SublimeText/Vim',
        'Pair programming when it\'s needed, not when it\'s not',
        'Github inline code reviews when requested by the committer',
        'Ideally something like chef to keep servers sane'
      ],
      'Personal Interests' => [
        'Open Source Software. In your web app, in your phone, in your 3d printer, it\'s all amazing.',
        'Gaming from NES to TF2',
        'Traveling'
      ]
    }
    @jobs = [
      #position, date string, company identification, description
      [
        'Rails Engineer with API/Services focus',
        'Feb 2010 to March 2012',
        'Howcast Media, San Francisco, CA',
        'Helped work towards rebuilding an oversized 2.3 app into satellite SOA parts running on Engine Yard Cloud maintained via Chef. Broke users code/db into its own dedicated SSO and API service. Worked with management to architect next generation of SOA apps to replace the legacy app. Replaced in-house transcoding system with 3rd party integration to Zencoder while maintaining legacy formats. Implemented tests at all levels from model level RSpec to Cucumber tests checking integration between servers running in the cloud.'
      ],
      [
        'Rails Engineer',
        'Summer 2007 to Fall 2009',
        'CrystalCommerce, Seattle, WA',
        'Worked with one to two other developers and the CEO on a rails 2.x app which provided a platform storefront and backend designed for inventory maintenance of tens of thousands of closely related collectibles across dozens of clients and domainnames. Integrated ActiveMerchant into a new checkout system. Designed a simple web-based POS to reuse as much behavior from the checkout system as possible. Built a dashboard to view an array of graphs across custom ranges with aggregate statistics.'
      ]
    ]
    @schools = [
      #degree, date string, school identification
      ['BS in Computer Science','June 2008','Seattle University, Seattle, WA']
    ]
    @footer_links = [
      ['http://jcwilk-resume.heroku.com/','Heroku hosted'],
      ['https://github.com/jcwilk/resume/blob/jcwilk/views/resume.haml','Github coded']
    ]
  end

  get "/" do
    haml :resume
  end
end