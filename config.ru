# Gemfile
require "rubygems"
require "bundler/setup"
require "sinatra"
require "./mycalc"
require "calculatorgem"

set :run, false
set :raise_errors, true

run Sinatra::Application

