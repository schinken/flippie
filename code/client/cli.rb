#!env ruby
ENV['BUNDLE_GEMFILE'] = "#{File.dirname(__FILE__)}/Gemfile"
require 'rubygems'
require 'bundler/setup'
require "#{File.dirname(__FILE__)}/lib/flippie_client.rb"


# initialize new flippie client
fc = FlippieClient.new(
   '192.168.1.2',  # IP address of your flippie board
   20,                # number of rows of your flip-dot display
   [25, 15],          # number of columns per module (usually some 28ers an one 21er)
   true               # debug => true
)

# sent text to flippie
fc.transmit(
   ARGV[0] || 'flippie rulez!', # text to display
   '6x8',                       # font to use (see fonts.rb for possible values)
   1,                           # space between lines
   true                         # are you sure (false means dry run)
)
