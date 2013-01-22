require 'pry'

require_relative 'provider'

@provider = Provider.new(ARGV.first)
