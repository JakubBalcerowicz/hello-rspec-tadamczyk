require 'rspec/autorun'
require '../lib/matrix'

RSpec.describe '../lib/matrix.rb' do
  describe "#new" do
    it "returns first row [1, 2]" do
      matrix = Matrix.new("1 2\n10 20")
      expectedRow = [1, 2]
      expect(matrix.rows[0]).to eq expectedRow
    end   
  end
end