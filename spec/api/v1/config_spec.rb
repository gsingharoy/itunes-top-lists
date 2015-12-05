require 'rails_helper'

describe API::ApiV1, 'config settings', api: true do

  it 'has prefix set to api' do
    expect(API::ApiV1.prefix).to eq 'api'
  end

  it 'has format set to json' do
    expect(API::ApiV1.format).to eq :json
  end

  it 'has version set to v1' do
    expect(API::ApiV1.version).to eq 'v1'
  end
end