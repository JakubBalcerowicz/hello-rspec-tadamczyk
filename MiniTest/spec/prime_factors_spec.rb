require 'rspec/autorun'
require '../lib/prime_factors'

RSpec.describe '../lib/prime_factors.rb' do
  describe "#for" do
    it "returns empty array for number equal 1" do
      number = 1
      finalArray = []
      expect(PrimeFactors.for(number)).to eq finalArray
    end
  end
end