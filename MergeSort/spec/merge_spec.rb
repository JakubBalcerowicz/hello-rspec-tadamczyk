require_relative '../lib/merge'

RSpec.describe '../lib/merge.rb' do
  describe '#merge' do
    it 'should returns correctly merged int array' do
      left = [1, 2, 5]
      right = [4, 3]
      final = [1, 2, 3, 4, 5, 6]
      expect(merge(left, right)).to match_array(final)
    end
  end
end
