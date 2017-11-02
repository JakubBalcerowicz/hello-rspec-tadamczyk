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

    it 'should returns sorted array with one int element' do
      expect([1].merge_sort).to match_array([1])
    end

    it 'should returns sorted array with one float element' do
      expect([1.0001].merge_sort).to match_array([1.0001])
    end

    it 'should returns sorted array with one string element' do
      expect(['tomek'].merge_sort).to match_array(['tomek'])
    end

    it 'should returns sorted int array' do
      expect([1321, 1, 23, 422].merge_sort).to match_array([1, 23, 422, 1321])
    end

    it 'should returns sorted negative int array' do
      expect([-2, -500, -1, -3].merge_sort).to match_array([-500, -3, -2, -1])
    end

    it 'should returns correctly sorted int array' do
      expect([133, 1, 0, -5].merge_sort).to match_array([-5, 0, 1, 133])
    end

    it 'should returns sorted int array with duplicate elements' do
      expect([0, 2, 1, 2, 1, 1].merge_sort).to match_array([0, 1, 1, 1, 2, 2])
    end

    it 'should returns sorted float array' do
      expect([1.001, 1.002, 1.1, 1].merge_sort).to match_array([1, 1.001, 1.002, 1.1])
    end

    it 'should returns sorted negative float array' do
      expect([-1.001, -1.002, -1.1, -1].merge_sort).to match_array([-1.1, -1.002, -1.001, -1])
    end

    it 'should returns correctly sorted float array' do
      expect([133, 1.531, 0.233, -5.032].merge_sort).to match_array([-5.032, 0.233, 1.531, 133])
    end

    it 'should returns sorted float array with duplicate elements' do
      expect([1.1, 1.1, 1, 1.001, 1, 1.002].merge_sort).to match_array([1, 1, 1.001, 1.002, 1.1, 1.1])
    end
  end
end
