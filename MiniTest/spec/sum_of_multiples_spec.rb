require 'rspec/autorun'
require '../lib/sum_of_multiples'

RSpec.describe '../lib/sum_of_multiples.rb' do
  describe "#to" do
    it "returns 0 for multiples of 3 or 5 to 1" do
      expect(SumOfMultiples.new(3, 5).to(1)).to eq 0
    end
  end
end