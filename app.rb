require 'rubygems'
require 'bundler/setup'
require 'cuba'

Cuba.define do
  on root do
    on accept('application/json') do
      res.write %_{"ip" : "#{req.ip}"}_
    end

    on default do
      res.write req.ip
    end
  end
end
