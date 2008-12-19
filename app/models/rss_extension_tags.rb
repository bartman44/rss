module RssExtensionTags
  include Radiant::Taggable
  
  tag "rss" do |tag|
    require 'open-uri'
    name = tag.attr["name"]
    rss = Rss.find(:first,:conditions=>"rsses.name='#{name}'")
    result = open(rss.url).read
    str = []
    for r in result
      str << r
    end
    str
  end
end