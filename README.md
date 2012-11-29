# Ruby ClickStack

## Using this ClickStack:

This stack uses Ruby 1.9.3, provided by ArchLinux x64

Use bundler to manage your gems

Use rake to do things (Default rake task is run[$app_port])

To specify different settings:

    bees config:set MYAPP -Rargs='run[$app_port]'
    bees app:restart MYAPP

## Rails example:

Add a run.rake file in lib/tasks with:

    task :run, :port do |t, args|
    	exec "rails server -p #{args.port}"
    end

And add those two lines to the Gemfile (To get a JavaScript runtime):
    
    gem 'execjs'
    gem 'therubyracer'

Prepare for deployment!

    bundle install
    zip ../rails.zip *
    bees app:deploy -a myapp -t ruby ../rails.zip

It's that easy!