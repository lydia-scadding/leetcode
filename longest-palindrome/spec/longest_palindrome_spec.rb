require_relative "../longest_palindrome"

describe "#longest_palindrome" do
  it "should return the correct answer for even-lengthed palindromes" do
    actual = longest_palindrome("gdscfbbfdasldj")
    expected = "fbbf"

    expect(actual).to eq(expected)
  end

  it "should return the correct answer for odd-lengthed palindromes" do
    actual = longest_palindrome("banana")
    expected = "anana"

    expect(actual).to eq(expected)
  end

  it "should return the correct answer for a single-letter string" do
    actual = longest_palindrome("a")
    expected = "a"

    expect(actual).to eq(expected)
  end
end
