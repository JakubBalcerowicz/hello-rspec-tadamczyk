require_relative '../lib/merge_sort'

RSpec.describe '../lib/merge_sort.rb' do
  describe '#merge_sort' do
    it 'should not returns raise error' do
      expect{[1, 2, 3].merge_sort}.not_to raise_error
    end

    it 'should returns correct int array' do
      expect([1, 2, 3].merge_sort).to be_a_kind_of Array
    end

    it 'should returns correct float array' do
      expect([1.001, 1.1, 0.00001].merge_sort).to be_a_kind_of Array
    end

    it 'should returns correct string array' do
      expect(%w[tomek adam czyk].merge_sort).to be_a_kind_of Array
    end

    it 'should returns sorted empty array' do
      expect([].merge_sort).to match([])
    end
  end
end
