module AppLookupHasher

  def apps_lookup_hash(app_list)
    response = ApiClients::Itunes::AppLookup.new(id: app_list.map(&:id).join(',')).fetch
    result = {}
    response['results'].each do |r|
      result[r['trackId'].to_s] = r
    end
    result
  end
end