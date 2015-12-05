# This factory class builds a list of App models from a list of app ids
class AppListFactory

  attr_accessor :app_ids, :apps

  def initialize(app_ids)
    @app_ids  = app_ids
    @apps     = []
  end

  def build
    app_ids.each do |app_id|
      @apps << build_app(app_id)
    end
    @apps
  end

  private

  def build_app(app_id)
    App.new(app_id)
  end

end