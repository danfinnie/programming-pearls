require 'column_3_problem_4.rb'

RSpec.describe "Column 3" do
  describe "Problem 4" do
    let(:thingy) { Column3Problem4.new }
    describe "#date_distance" do
      it "works with dates in the same month" do
        expect(thingy.date_distance(2014, 4, 1, 2014, 4, 10)).to eq(9)
      end

      it "works with dates spanning a year boundary" do
        expect(thingy.date_distance(2014, 12, 30, 2015, 1, 2)).to eq(3)
      end
    end
  end
end
