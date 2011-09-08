require 'rubygems'

# ==> Fix for error:
# /home/dwaynemac/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/psych.rb:148:in `parse': couldn't parse YAML at line 7 column 0 (Psych::SyntaxError)
# source: http://stackoverflow.com/questions/4980877/rails-error-couldnt-parse-yaml
require 'yaml'
YAML::ENGINE.yamler= 'syck'
# ==> end fix

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
