require "spec_helper"

RSpec.describe Datamuse do
  describe ".words" do

    it "returns an empty list when passed zero parameters" do
      VCR.use_cassette('no_parameters') do
        expect(Datamuse.words).to be_an_instance_of(Array)
        expect(Datamuse.words.size).to eql(0)
      end
    end

    context "with 'ml' param" do
      it "returns Hash" do
        VCR.use_cassette('ml_velleity') do
          expect(Datamuse.words(ml: 'velleity')[0]['word']).to eql('wish')
        end
      end
    end
  end
end