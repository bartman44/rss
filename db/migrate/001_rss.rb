class Rss < ActiveRecord::Migration
  
  def self.up
    create_table "rss".pluralize do |t|
      t.string   :name
      t.string   :url
    end
  end
  
  def self.down
    drop_table "rss".pluralize
  end
end