# This is a factory class which builds a model of GenreTopList
class GenreTopListFactory

  attr_accessor :response_body, :genre_top_list

  def initialize(response_body)
    @response_body  = response_body
    @genre_top_list = GenreTopList.new
  end

  def build
    build_genre_top_list_basic_attrs
    build_top_paid_apps
    build_top_free_apps
    build_top_grossing_apps
    genre_top_list
  end

  private

  def build_genre_top_list_basic_attrs
    self.genre_top_list.id    = response_body['genre']['id']
    self.genre_top_list.name  = response_body['genre']['name']
    self.genre_top_list.url   = response_body['genre']['url']
  end

  def build_top_paid_apps
    self.genre_top_list.top_paid_apps = build_app_list(response_body['topCharts'][0]['adamIds'])
  end

  def build_top_free_apps
    self.genre_top_list.top_free_apps = build_app_list(response_body['topCharts'][1]['adamIds'])
  end

  def build_top_grossing_apps
    self.genre_top_list.top_grossing_apps = build_app_list(response_body['topCharts'][2]['adamIds'])
  end

  def build_app_list(app_ids)
    AppListFactory.new(app_ids).build
  end

end