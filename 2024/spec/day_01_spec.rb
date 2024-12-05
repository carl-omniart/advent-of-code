require_relative 'spec_helper'
require_relative '../lib/day_01'

RSpec.describe Day01 do
  let(:test_input) do
    <<~TEST_INPUT
      3   4
      4   3
      2   5
      1   3
      3   9
      3   3
    TEST_INPUT
  end

  it 'can solve part one' do
    expected = 11
    actual   = Day01.solve_part_one test_input
    expect(actual).to eq expected
  end

  it 'can solve part two' do
    expected = 31
    actual   = Day01.solve_part_two test_input
    expect(actual).to eq expected
  end
end
