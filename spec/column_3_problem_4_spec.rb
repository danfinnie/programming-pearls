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

      it "works for month boundaries" do
        expect(thingy.date_distance(2015, 4, 13, 2015, 5, 28)).to eq(45)
      end

      it "works with dates seperated by more than a year" do
        expect(thingy.date_distance(2014, 12, 30, 2016, 1, 2)).to eq(3+365)
      end
    end

    describe "#day_of_week" do
      it "works for tax day" do
        expect(thingy.day_of_week(2015, 4, 15)).to eq(Column3Problem4::WEDNESDAY)
      end

      it "works for may 28 2015" do
        expect(thingy.day_of_week(2015, 5, 28)).to eq(Column3Problem4::THURSDAY)
      end

      it "works for dates before the known monday" do
        expect(thingy.day_of_week(2015, 3, 10)).to eq(Column3Problem4::TUESDAY)
      end
    end

    describe "#cal" do
      it "works for April 2015" do
        expect(thingy.cal(2015, 4)).to eq <<-EOT.rstrip
        1  2  3  4  5
  6  7  8  9 10 11 12
 13 14 15 16 17 18 19
 20 21 22 23 24 25 26
 27 28 29 30
        EOT
      end
    end
  end
end
