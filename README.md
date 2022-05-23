### Student Opportunities Read Me 

The Student Opportunities app is a Rails web app that allows students to search for scholarships, fellowships, and grants. 

#### Environment Details
  * Ruby 2.6.8p205
  * Rails 6.1.6

#### Environment Configuration

  * This app uses a custom environment config file, which is stored in the rails root directory in config/application.example.yml
  
  * Contents of application.example.yml
  ```
  STUDENTOPP_DB_HOST: ''
  STUDENTOPP_DB_NAME: ''
  STUDENTOPP_DB_USERNAME: ''
  STUDENTOPP_DB_PASSWORD: ''
  MY_SECRET_KEY: ''
  STUDENTOPP_LDAP_HOST: ''
  STUDENTOPP_LDAP_PASSWORD: ''
  STUDENTOPP_LDAP_ADMIN: ''
  ```
  * To deploy, the example file has been copied to application.yml and the variables have been set appropriately.
  
  * The Ruby code for setting up these variables is stored in config/application.rb as follows:
```
  config.assets.version = '1.0'
  config.before_configuration do
    env_file = File.join(Rails.root, 'config', 'application.yml')
    YAML.load(File.open(env_file)).each do | key, value |
      ENV[key.to_s] = value
    end if File.exists?(env_file)
  end
```

* Time zone formatting in config/application.rb is set up as follows:
```
  config.time_zone = 'Pacific Time (US & Canada)'
  config.active_record.default_timezone :local
```

#### Critical Gems:
  * Activerecord-oracle_enhanced-adapter (1.7.0)
  * Ruby OCI-8
  * Devise (4.6)
  * Devise for LDAP
  * Ransack (for search form on index page)
  * Bootstrap
  * jQuery Tablesorter gem for sticky header: 'jquery-tablesorter'


#### Steps to deploy locally:
1. Use git to clone the repo.
2. Open the Gemfile and comment out the mysql gem line: ```#gem 'mysql2', '~> 0.3.20'```
3. Run these commands:
```
$ cd student_opportunities
$ bundle install 
$ rake db:migrate
$ rake db:seed
$ rails s
```

4. Visit "localhost:3000/opportunities"
