require 'rails_helper'

describe ApiClients::Itunes::Base do
  let(:subject) { ApiClients::Itunes::Base.new }

  describe '#base_uri' do
    it 'should raise error' do
      expect{
        subject.base_uri
      }.to raise_error(RuntimeError)
    end
  end

  describe '#headers' do
    it 'should raise error' do
      expect{
        subject.headers
      }.to raise_error(RuntimeError)
    end
  end

  describe '#get_params_string' do
    let(:query_params) do
      {
        a: 1,
        b: 2,
        c: 3
      }
    end
    context 'query_params has symbol as keys' do
      before { subject.query_params = query_params }
      it 'returns the correct query_params separated by &' do
        expect(subject.send(:get_params_string))
          .to eq 'a=1&b=2&c=3'
      end
    end
    context 'query_params has string as keys' do
      before do
        new_query_params = {}
        query_params.each{ |k,v| new_query_params[k.to_s] = v }
        subject.query_params = new_query_params
      end
      it 'returns the correct query_params separated by &' do
        expect(subject.send(:get_params_string))
          .to eq 'a=1&b=2&c=3'
      end
    end
  end
end