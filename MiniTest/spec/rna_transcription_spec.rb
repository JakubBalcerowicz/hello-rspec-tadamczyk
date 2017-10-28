require 'rspec/autorun'
require '../lib/rna_transcription'

RSpec.describe '../lib/rna_transcription.rb' do
  describe "#of_dna" do
    it "returns 'G' after rna complement" do
      expect(Complement.of_dna('C')).to eq 'G'
    end
  end
end