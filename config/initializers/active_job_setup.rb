# -*- coding: utf-8 -*-
require 'bundler/setup'
require 'active_job'
require 'sneakers'

opts = { 
  :amqp => 'localhost', 
  :vhost => 'vhost', 
  :exchange => 'sneakers', 
  :exchange_type => :direct
}

Sneakers.configure(opts)
ActiveJob::Base.queue_adapter = :sneakers

# Example Code
#class BackgroundJob < ActiveJob::Base
#  queue_as :job_queue
#  
#  def perform()
#    puts 'Perform a job'
#  end
#end
# Usage
#BackgroundJob.perform_later()
