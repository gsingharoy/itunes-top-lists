# This is a factory class which builds a model of GenreTopList
class GenreTopListFactory

  attr_accessor :response_body, :genre_top_list

  def initialize(response_body)
    @response_body  = response_body
    @genre_top_list = GenreTopList.new
  end

  def build
    build_genre_top_list_basic_attrs
    genre_top_list
  end

  private

  def build_genre_top_list_basic_attrs
    self.genre_top_list.id    = response_body['genre']['id']
    self.genre_top_list.name  = response_body['genre']['name']
    self.genre_top_list.url   = response_body['genre']['url']
  end

end