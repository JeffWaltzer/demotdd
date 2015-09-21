require 'rspec'
require_relative '../lib/roman'

describe 'first spec' do
  it 'Calculates value of I' do
    expect(Roman.convert('I')).to eq 1
  end
end