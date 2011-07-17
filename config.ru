require 'rubygems'
require 'bundler'

ENV["RACK_ENV"] ||= 'dev'

Bundler.require

$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'geo_geo'

run GeoGeo
