require 'rubygems'
require 'bundler/setup'
require 'cuba'

Cuba.define do
  on root do
    on accept 'application/json' do
      res.write <<-JSON
        {
          "ip" : "#{req.ip}"
        }
      JSON
    end

    on accept 'application/xml' do
      res.write <<-XML
        coming soon...
      XML
    end

    on accept 'text/xml' do
      res.write <<-XML
        coming soon...
      XML
    end

    on accept 'text/html' do
      res.write <<-HTML
        coming soon...
      HTML
    end

    on default do
      res.write req.ip
    end
  end
end
