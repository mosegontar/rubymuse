require "spec_helper"

RSpec.describe Datamuse do
  describe "#words" do
    before(:each) do
      @datamuse = Datamuse.new
    end

    it "returns an empty list when not passed args" do
      expect(@datamuse.words).to be_an_instance_of(Array)
    end
  end
end