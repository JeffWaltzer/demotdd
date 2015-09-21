require 'rspec'
require_relative '../lib/roman'

describe 'first spec' do

  {
      'I' => 1,
      'II' => 2,
      'V' => 5,
      'VI' => 6,
      'IV' => 4,
      'X' => 10,
      'IX' => 9,
      'XIV' => 14,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000,
      'MCMLXXXIV'  => 1984
  }.each do |test, expected|

    it "Calculates value of #{test}" do
      expect(Roman.convert(test)).to eq expected
    end

  end

end
