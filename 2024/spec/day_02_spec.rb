require_relative 'spec_helper'
require_relative '../lib/day_02'

RSpec.describe Day02 do
  let(:input) do
    <<~TEST_INPUT
      7 6 4 2 1
      1 2 7 8 9
      9 7 6 2 1
      1 3 2 4 5
      8 6 4 4 1
      1 3 6 7 9
    TEST_INPUT
  end

  it 'can solve part one' do
    expected = 2
    actual   = Day02.solve_part_one input
    expect(actual).to eq expected
  end

  it 'can solve part two' do
    expected = 4
    actual   = Day02.solve_part_two input
    expect(actual).to eq expected
  end
end
