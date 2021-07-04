require_relative "../palindrome_number"

describe "#palindrome?" do
  it "should return the correct answer" do
    actual = palindrome?(121)
    expected = true

    expect(actual).to eq(expected)
  end

  it "should return the correct answer for a negative number" do
    actual = palindrome?(-121)
    expected = false

    expect(actual).to eq(expected)
  end

  it "should work for numbers ending in zero" do
    actual = palindrome?(10)
    expected = false

    expect(actual).to eq(expected)
  end
end
