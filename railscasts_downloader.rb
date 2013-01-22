require 'nokogiri'
require 'open-uri'

class RailscastsDownloader

  def initialize(name)
    @name = name
    get_screencast_list
    download_screencasts
  end

  def get_screencast_list
    @screencast_list = []
    site = Nokogiri::HTML(open('http://feeds.feedburner.com/railscasts'))
    site.xpath("//enclosure").each do |screencast|
      @screencast_list << screencast.attributes['url'].value.split('/').last
    end
  end

  def download_screencasts
    FileUtils.cd(@name) do
      @screencast_list.each do |screencast|
        FileUtils.touch(screencast)
      end
    end
    puts 'Download complete'
  end
end
