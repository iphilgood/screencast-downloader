require 'pry'

require_relative 'provider'
require_relative 'directory'
require_relative 'downloader'

@provider = Provider.new(ARGV.first)
@directory = Directory.new(@provider.name)
@downloader = Downloader.new(@provider.name)
