require 'column_1_problem_1.rb'

RSpec.describe "Column 1" do
  describe "Problem 1" do
    let(:thingy) { Column1Problem1.new }

    [
      [3, 2, 1],
      [1, 5, 2, 7, 4, 5],
      [4, 3, 2, 1]
    ].each do |unsorted_array|
      it "sorts #{unsorted_array.inspect}" do
        expect(thingy.sort(unsorted_array)).to eq(unsorted_array.sort)
      end
    end
  end
end
