require 'rspec/autorun'
require '../lib/gigasecond'

RSpec.describe '../lib/gigasecond.rb' do
  describe "#from" do
    it "returns 1/1/2043 01:46:40 date" do
      date = Time.utc(2011, 4, 25, 0, 0, 0)
      finalDate = Time.utc(2043, 1, 1, 1, 46, 40)
      expect(Gigasecond.from(date)).to eq finalDate
    end
  end
end