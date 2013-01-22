require_relative 'provider'
require_relative 'railscasts_downloader'

class Downloader

  attr_accessor :name

  def initialize(name)
    @name = name
    choose_downloader
  end

  def choose_downloader
    if @name = Provider::RAILSCASTS
      RailscastsDownloader.new(@name)
    elsif @name == Provider::RAILSCASTS_PRO
      RailscastsProDownloader.new
    elsif @name == Provider::PEEPCODE
      PeepcodeDownloader.new
    else
      DestroyallsoftwareDownloader.new
    end
  end
end
