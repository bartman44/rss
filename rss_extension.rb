# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class RssExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/rss"
  
   define_routes do |map|
     map.connect 'admin/rss/:action', :controller => 'admin/rss'
   end
  
  def activate
    Page.class_eval {
      include RssExtensionTags
    }
     admin.tabs.add "Rss", "/admin/rss", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    # admin.tabs.remove "Rss"
  end
  
end