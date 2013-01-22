require 'pry'

require_relative 'provider'
require_relative 'directory'

@provider = Provider.new(ARGV.first)
@directory = Directory.new(@provider.name)
