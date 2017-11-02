require_relative '../lib/merge_sort'

RSpec.describe '../lib/merge_sort.rb' do
  describe '#merge_sort' do
    it 'should not returns raise error' do
      expect{[1, 2, 3].merge_sort}.not_to raise_error
    end

    it 'should returns correct string array' do
      expect(%w[tomek adam czyk].merge_sort).to be_a_kind_of Array
    end

    it 'should returns sorted empty array' do
      expect([].merge_sort).to match([])
    end

    it 'should returns sorted array with one string element' do
      expect(['tomek'].merge_sort).to match_array(['tomek'])
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
