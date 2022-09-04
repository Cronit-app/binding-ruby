# frozen_string_literal: true

require_relative "cronit/version"
require 'httparty'

module Cronit
  class Error < StandardError; end
  # Your code goes here...

  class Cronit 
    def initialize(api_key) 
      @api_key = api_key
    end 

    def list_crons
      HTTParty.get('https://api.cronit.app/v1/crons', {headers: {authorization: @api_key}})
    end 

    def run_cron(cron_id) 
      HTTParty.post('https://api.cronit.app/v1/crons/' + cron_id + '/run', {headers: {authorization: @api_key}})
    end 

    def toggle_cron(cron_id) 
      HTTParty.post('https://api.cronit.app/v1/crons/' + cron_id + '/toggle', {headers: {authorization: @api_key}})
    end 
  end 
end
