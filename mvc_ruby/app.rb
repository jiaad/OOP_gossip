require 'bundler'
Bundler.require
require 'rubygems'

#require_relative './lib/scrapper'
$:.unshift File.expand_path("./../lib", __FILE__)
#require 'app/scrapper'
require 'router'
require 'controller'
require 'model'
require 'view'

Router.new.perform
