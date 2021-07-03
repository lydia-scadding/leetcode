require_relative "../longest_substring"

describe "#longest_substring" do
  it "should return the correct answer" do
    actual = longest_substring("abcabcbb")
    expected = 3

    expect(actual).to eq(expected)
  end

  it "should return the correct answer for a string of one repeating letter" do
    actual = longest_substring("bbbbb")
    expected = 1

    expect(actual).to eq(expected)
  end

  it "should return the correct answer when not all occurring letters are in the substring" do
    actual = longest_substring("pwwkew")
    expected = 3

    expect(actual).to eq(expected)
  end

  it "should return 1 for a string of length 1" do
    actual = longest_substring("a")
    expected = 1

    expect(actual).to eq(expected)
  end

  it "should work for a long string" do
    actual = longest_substring("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaacvga")
    expected = 4

    expect(actual).to eq(expected)
  end

  it "should return 0 for an empty string" do
    actual = longest_substring("")
    expected = 0

    expect(actual).to eq(expected)
  end
end
