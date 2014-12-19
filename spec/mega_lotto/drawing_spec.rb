require "spec_helper"

module MegaLotto
  describe Drawing do
    describe "#draw" do
      let(:draw) { MegaLotto::Drawing.new.draw }
      it "return an array" do
        expect(draw).to be_a(Array)
      end

      it "return an array with 6 elements" do
        expect(draw.size).to eq(6)
      end

      it "each element is an integer" do
        draw.each { |number| expect(number).to be_a(Integer) }
      end

      it "each element is less than 60" do
        draw.each { |number| expect(number).to be < 60 }
      end
    end
  end
end
