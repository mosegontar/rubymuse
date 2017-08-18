require 'spec_helper'

RSpec.describe Datamuse do
  describe '.words' do
    it 'returns an empty list when passed zero parameters' do
      VCR.use_cassette('no_parameters') do
        expect(Datamuse.words).to be_an_instance_of(Array)
        expect(Datamuse.words.size).to eql(0)
      end
    end

    context 'with "ml" param' do
      it 'returns multiple results' do
        VCR.use_cassette('ml_velleity') do
          results = Datamuse.words(ml: 'velleity')
          expect(results.size).to be > 0
          # each result should be a three element hash
          expect(results[0].keys.size).to eq(3)
        end
      end

      it 'returns a single result when passed max=1' do
        VCR.use_cassette('ml_velleity_max_1') do
          results = Datamuse.words(ml: 'velleity', max: 1)
          expect(results.size).to eq(1)
        end
      end

      it 'limits results when a wildcard character is used with "sp" param' do
        VCR.use_cassette('ml_velleity_sp_d*') do
          results = Datamuse.words(ml: 'velleity', sp: 'd*')
          resulting_words = results.collect { |res| res['word'] }
          expect(resulting_words).to all start_with("d")
        end
      end
    end
  end

  describe '.sug' do
    it 'returns an empty list when passed zero paramters' do
      VCR.use_cassette('sug_no_parameters') do
        expect(Datamuse.sug).to be_an_instance_of(Array)
        expect(Datamuse.sug.size).to eql(0)
      end
    end

    context 'with "s" param' do
      it 'returns multiple results' do
        VCR.use_cassette('sug_s_vel') do
          results = Datamuse.sug(s: 'vel')
          expect(results.size).to be > 0
          expect(results[0].keys.size).to eq(2)
        end
      end

      it 'returns a single result when passed max=1' do
        VCR.use_cassette('sug_s_vel_max_1') do
          results = Datamuse.sug(s: 'vel', max: 1)
          expect(results.size).to eq(1)
        end
      end

      it 'returns spanish vocabulary when passed v=es' do
        VCR.use_cassette('sug_s_vel_v_es') do
          results = Datamuse.sug(s: 'vel', v: 'es')
          vocab = results.collect { |item| item['word'] }
          expect(vocab).to include('velocidad')
        end
      end
    end
  end
end
