# Cronit

Welcome to the Cronit Gem, which is the Ruby bindings for the Cronit application API. 
Cronit ((https://cronit.app)[https://cronit.app]) is an online cronjob scheduling application you can use to plan and execute recurring tasks online. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cronit'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cronit

## Usage

Use this gem by creating an instance of the Cronit client (using the API key availble in your Cronit account):   
```ruby 
client = Cronit::Cronit.new('12341234-1234-1234-1234-123412341234')
```

Then, use it to interact with your cron jobs: 

```ruby 
client.list_crons
client.run_cron(cron_id)
client.toggle_cron(cron_id)
```