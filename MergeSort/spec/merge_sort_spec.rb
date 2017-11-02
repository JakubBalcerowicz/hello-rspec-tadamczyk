require_relative '../lib/merge_sort'

RSpec.describe '../lib/merge_sort.rb' do
  describe '#merge_sort' do
    it 'not returns raise error' do
      expect{[1, 2, 3].merge_sort}.not_to raise_error
    end
  end
end
