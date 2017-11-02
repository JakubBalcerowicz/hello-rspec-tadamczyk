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

    it 'should returns sorted string array' do
      expect(%w[tomek adam czyk].merge_sort).to match_array(%w[adam czyk tomek])
    end

    it 'should returns sorted string array with big letters' do
      expect(%w[Tomek adam czyk].merge_sort).to match_array(%w[Tomek adam czyk])
    end

    it 'should returns sorted array with special keys' do
      before_sort = ['#', '!@#', 'ZA', ';', '/', '1', '!', '@']
      after_sort = ['!', '!@#', '#', '/', '1', ';', '@', 'ZA']
      expect(before_sort.merge_sort).to match_array(after_sort)
    end

    it 'should returns sorted string array with duplicate elements' do
      before_sort = %w[tomek tomek tomek adam czyk adam]
      after_sort = %w[adam adam czyk tomek tomek tomek]
      expect(before_sort.merge_sort).to match_array(after_sort)
    end

    it 'should returns sorted array includes float, int and string elements' do
      before_sort = ['Tomek', '15.34', 'adam', '9']
      after_sort = ['9', '15.34', 'Tomek', 'adam']
      expect(before_sort.merge_sort).to match_array(after_sort)
    end

    it 'should returns the littlest element in sorted int array' do
      array = [-1, -12, 2, 5].merge_sort
      expect(array[0]).to eq (-12)
    end

    it 'should returns the biggest element in sorted int array' do
      array = [-1, -12, 2, 5].merge_sort
      expect(array[-1]).to eq (5)
    end

    it 'should returns the littlest element in sorted float array' do
      array = [-1.002, -1.01, 5.2321, 5.232].merge_sort
      expect(array[0]).to eq (-1.01)
    end

    it 'should returns the biggest element in sorted float array' do
      array = [-1.002, -1.01, 5.2321, 5.232].merge_sort
      expect(array[-1]).to eq (5.2321)
    end

    it 'should returns the first one element in sorted string array' do
      array = %w[Tomek Adam adam czyk Czyk].merge_sort
      expect(array[0]).to eq 'Adam'
    end

    it 'should returns the last one element in sorted string array' do
      array = %w[Tomek Adam adam czyk Czyk].merge_sort
      expect(array[-1]).to eq 'czyk'
    end
  end
end
