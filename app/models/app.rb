class App

  attr_accessor :id, :name, :description,
    :small_icon_url, :publisher_name,
    :price, :version_number,
    :average_user_rating

  def initialize(id)
    @id = id
  end

  # This will sync app information from itunes
  def sync_app_information!(app_lookup)
    @name                 = app_lookup.try(:[],'trackName')
    @description          = app_lookup.try(:[],'description')
    @small_icon_url       = app_lookup.try(:[],'artworkUrl60')
    @publisher_name       = app_lookup.try(:[],'sellerName')
    @price                = app_lookup.try(:[],'price')
    @version_number       = app_lookup.try(:[],'version')
    @average_user_rating  = app_lookup.try(:[],'averageUserRatingForCurrentVersion')
  end
end