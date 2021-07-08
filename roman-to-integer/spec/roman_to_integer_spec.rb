require_relative "../roman_to_integer"

describe "#roman_to_int" do
  it "should return the correct answer for a string of length 2" do
    expect(roman_to_int("IV")).to eq(4)
    expect(roman_to_int("IX")).to eq(9)
  end

  it 'should return the correct answer for a string of length 3' do
    expect(roman_to_int('III')).to eq(3)
  end

  it 'should return the correct answer for a string of length 5' do
    expect(roman_to_int('LVIII')).to eq(58)
  end

  it 'should return the correct answer for a string of length 3' do
    expect(roman_to_int('MCMXCIV')).to eq(1994)
  end
end
