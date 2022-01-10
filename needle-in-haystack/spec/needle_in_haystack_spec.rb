# frozen_string_literal: true

require_relative '../needle_in_haystack'

describe 'str_str' do
  it 'returns the index of the first occurrence of needle in haystack' do
    result = str_str('hello', 'll')

    expect(result).to eq 2
  end

  it 'returns -1 if needle is not part of haystack' do
    result = str_str('aaaaa', 'bba')

    expect(result).to eq(-1)
  end

  it 'returns 0 if needle is an empty string' do
    result = str_str('', '')

    expect(result).to eq 0
  end
end
