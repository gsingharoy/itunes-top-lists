# This class contains the list of apps in a particular genre
# This needs to be generated from its factory class GenreTopListFactory
class GenreTopList
  include AppLookupHasher

  attr_accessor :id, :name,
    :url, :top_paid_apps,
    :top_free_apps, :top_grossing_apps

  def initialize
    @top_paid_apps      = []
    @top_free_apps      = []
    @top_grossing_apps  = []
  end

  def sync_app_information!
    [:top_paid_apps, :top_free_apps, :top_grossing_apps].each do |app_list|
      app_list_lookup_hash = apps_lookup_hash(self.send(app_list))
      self.send(app_list).each do |app|
        app.sync_app_information!(app_list_lookup_hash[app.id])
      end
    end
  end
end