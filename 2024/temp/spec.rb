require_relative 'spec_helper'
require_relative '../lib/FileName'

RSpec.describe ModuleName do
  let(:test_input) do
    <<~TEST_INPUT
      
    TEST_INPUT
  end

  xit 'can solve part one' do
    expected = nil
    actual   = ModuleName.solve_part_one test_input
    expect(actual).to eq expected
  end

  xit 'can solve part two' do
    expected = nil
    actual   = ModuleName.solve_part_two test_input
    expect(actual).to eq expected
  end
end
