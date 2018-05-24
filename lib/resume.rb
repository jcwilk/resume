class Resume
  #TODO: Use these to pull up specific non-hardcoded instances
  def self.find(*args)
    new
  end

  def self.first(*args)
    new
  end

  attr_reader :title, :name, :street, :city, :state, :email, :github_link

  def initialize
    @title = 'John Wilkinson'
    @name, @city, @state, @email, @github_link = ['John Wilkinson','Singapore','Singapore','jcwilk at gmail.com','http://github.com/jcwilk']
    @street = 'Bukit Batok East' #it'll hide the line if you omit
  end

  def misc_sections
    {
      'Objective' => [
        'To design, build, refactor, and extend innovative projects and experiment with new technologies as a part of a motivated, respectful, and cooperative team with freedom to hone unique skills to be shared between ourselves. Long sentences are a plus.'
      ],
      'Skills' => [
        'Well versed in Ruby, JavaScript, and C#, adequate in Python, C++, BASH, and Java, and enthused and fearless about diving into any other language.',
        'Passionate about seeking the perfect balance of testing across the various possible layers to drive the given situation.',
        'Architected a variety of RESTful APIs and experienced first hand the value tradeoffs in deciding between designing for maintainability or organic growth.',
        'Comforable diving into a database CLI or debugging slow/eroneous queries through more indirect means.',
        'Eager to play devil\'s advocate and wrestle out key blockades along the way before too much code gets invested.',
        'Works refactoring in as an inherent part of moving forward with development to keep technical debt at the level appropriate for the project.'
      ],
      'Preferred Development Style' => [
        'git with something like <a href="http://scottchacon.com/2011/08/31/github-flow.html">Github Workflow</a> to keep master safe and valuable',
        'Ubuntu, RVM, SublimeText/Vim',
        'Pair programming when it\'s valuable, solo when it\'s efficient',
        'Github inline code reviews as much as possible but not simply as dogma',
        'Automated server provisioning (eg chef, puppet, etc) less is more!'
      ],
      'Personal Interests' => [
        'Open Source: Hardware, software, and ideas; The right community can outshine the brightest proprietary enterprise.',
        'Hypermedia and IoT; It\'s unfortunately not always professionally feasible, but always a heck of a lot of fun to push recreationally.',
        'Gaming: Mainly retro, indie, and indie development',
        'Traveling: Mainly western Europe, Scandinavia, and Asia'
      ]
    }
  end

  def jobs
    [
      #position, date string, company identification, description
      [
        'Games Engineer',
        'August 2017 to April 2018',
        'Springloaded, Singapore',
        [
          'Ported and released two games for the Nintendo Switch from legacy mobile code: "Hiragana Pixel Party" and "Nuclien".',
          'Helped finish up another Switch game, "GORSD", still unreleased as we search for publishers.',
          'Led the development of the battle animation system for "Tiny Dice Dungeon 2", the successor to "Tiny Dice Dungeon", still in development.'
        ]
      ],
      [
        'CTO',
        'May 2016 to Present',
        'Gimmie, Singapore',
        [
          'Managed all technical aspects of the company.',
          'Worked with the business stakeholder to find solutions that fit our tech structure.',
          'Wrote new version of the Rails server application mostly from scratch based on learned success from previous code.',
          'Handled setup, deployment, and maintenance of AWS server stack.',
          'Architected event pipeline built on top of Segment and Keen for tracking user events.',
          'Hired and managed a remote engineer.',
          'Built solutions to integrate with legacy 3rd party systems.'
        ]
      ],
      [
        'Principal Engineer',
        'May 2015 to May 2016',
        'ReferralCandy, Singapore',
        [
          'Led the team of Rails engineers through process and infrastructure improvements.',
          'Got the team onto Github with a pull request driven development structure.',
          'Converted shared libraries into versioned internal gems.',
          'Pushed for more emphasis on code quality and test driven code.',
          'Led the hiring process.',
          'Spent the majority of my time developing Rails server code.'
        ]
      ],
      [
        'Rails Software Engineer/Software Architect',
        'March 2012 to October 2014',
        'Lumos Labs, San Francisco, CA',
        [
          'Focused largely on finding compromises using rails engines between SOA and Monolith given our pre-existing assets.',
          'Started and led a small team dedicated to enhancing and innovating on web architecture across the rails team.',
          'Researched, designed, built, and delivered full services for handling all of the split testing and email delivery for the company.',
          'Championed aggressive testing practices and well documented delivery procedures to enhance trust in the systems surrounding our daily development.',
          'Trained and mentored junior engineers well into midlevel and beyond.',
          'Worked closely with upper management to ensure expectations about resources needed were managed on both ends of the piepline.',
          'Gave high profile presentations, one of which to Yukihiro Matsumoto (creator of Ruby), on behalf of the company.'
        ]
      ],
      [
        'Rails Engineer with API/Services focus',
        'Feb 2010 to March 2012',
        'Howcast Media, San Francisco, CA',
        [
          'Helped work towards rebuilding an oversized 2.3 app into satellite SOA parts running on Engine Yard Cloud maintained via Chef.',
          'Broke users code/db into its own dedicated SSO and API service.',
          'Worked with management to architect next generation of SOA apps to replace the legacy app.',
          'Replaced in-house transcoding system with 3rd party integration to Zencoder while maintaining legacy formats.',
          'Implemented tests at all levels from model level RSpec to Cucumber tests checking integration between servers running in the cloud.'
        ]
      ],
      [
        'Rails Engineer',
        'Summer 2007 to Fall 2009',
        'CrystalCommerce, Seattle, WA',
        [
          'Worked with one to two other developers and the CEO on a rails 2.x app which provided a platform storefront and backend designed for inventory maintenance of tens of thousands of closely related collectibles across dozens of clients and domain names.',
          'Integrated ActiveMerchant into a new checkout system.',
          'Designed a simple web-based POS to reuse as much behavior from the checkout system as possible.',
          'Built a dashboard to view an array of graphs across custom ranges with aggregate statistics.'
        ]
      ]
    ]
  end

  def personal_projects
    [
      #title, url, description
      [
        'Material Girl',
        'https://www.lexaloffle.com/bbs/?pid=39675&tid=29166',
        [
          'Small but complete game for the Pico-8 platform.',
          'Mashup between JRPG, Dating Sim, and puzzle game.',
          'Focused heavily on a promises-inspired pattern for handling sequential tweens.',
          'Designed custom tween and sprite tracking mini libraries.',
          'Used Ruby for compiling multiple files of code into the final cart for easier organization.'
        ]
      ],
      [
        'Anx',
        'https://www.lexaloffle.com/bbs/?pid=42366&tid=29630',
        [
          'Still WIP first person 3D game for the Pico-8 platform.',
          'Simulation of social anxiety as a game mechanic.',
          'Built the raycasting 3D engine from scratch which runs in a strictly 2D platform.',
          'Due to lack of 3D hardware support the rendering automatically degrades in quality to maintain framerate.'
        ]
      ],
      [
        'Divided',
        'https://github.com/jcwilk/divided',
        [
          'Browser-based, room-based, turn-based, pixel art WIP MMO',
          'Runs in eventmachine on the server using long-poll to deliver events.',
          'Heavily API driven with a HAL hypermedia structure.',
          'Due to the ambitious nature, development has been paused until I get through smaller projects.',
          'Not currently hosted online but the prototype is functional.'
        ]
      ],
      [
        'Misc. Github Projects/Contributions',
        'https://github.com/jcwilk',
        [
          'Quite a lot of smaller projects and forks with contributions to open source software.'
        ]
      ]
    ]
  end

  def schools
    [
      #degree, date string, school identification
      ['BS in Computer Science','June 2008','Seattle University, Seattle, WA']
    ]
  end

  def footer_links
    [
      ['http://jcwilk-resume.heroku.com/','Heroku hosted'],
      ['https://github.com/jcwilk/resume/blob/jcwilk/views/resume.haml','Github coded']
    ]
  end
end
