require_relative "../zigzag_conversion"

describe "#convert" do
  it "should return the correct answer for 3 rows" do
    actual = convert("PAYPALISHIRING", 3)
    expected = "PAHNAPLSIIGYIR"

    expect(actual).to eq(expected)
  end

  it "should return the correct answer for 4 rows" do
    actual = convert("PAYPALISHIRING", 4)
    expected = "PINALSIGYAHRPI"

    expect(actual).to eq(expected)
  end

  it "should return the correct answer for an input of length 1" do
    actual = convert("A", 1)
    expected = "A"

    expect(actual).to eq(expected)
  end

  it "should return the correct answer for an input of length 2" do
    actual = convert("AB", 1)
    expected = "AB"

    expect(actual).to eq(expected)
  end
end
