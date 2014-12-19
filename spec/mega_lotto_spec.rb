require "spec_helper"

describe MegaLotto do
  before(:each) do
    MegaLotto.configure do |config|
      config.drawing_count = 10
    end
  end

  describe ".configure" do
    after(:each) do
      MegaLotto.reset
    end

    let(:draw) { MegaLotto::Drawing.new.draw }

    it "return an array" do
      expect(draw).to be_a(Array)
    end

    it "return an array with 10 elements" do
      expect(draw.size).to eq(10)
    end
  end

  describe ".reset" do
    it "resets the configuration" do
      MegaLotto.reset
      config = MegaLotto.configuration
      expect(config.drawing_count).to eq(6)
    end
  end
end
