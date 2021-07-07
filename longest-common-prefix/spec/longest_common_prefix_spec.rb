require_relative "../longest_common_prefix"

describe "#longest_common_prefix" do
  it "returns the correct answer" do
    actual = longest_common_prefix(["flower","flow","flight"])
    expected = "fl"

    expect(actual).to eq(expected)
  end

  it "returns the correct answer when the first word is longest" do
    actual = longest_common_prefix(["flower", "flow", "fl"])
    expected = "fl"

    expect(actual).to eq(expected)
  end

  it "returns the correct answer when the first word is shortest" do
    actual = longest_common_prefix(["fl", "flow", "flower"])
    expected = "fl"

    expect(actual).to eq(expected)
  end

  it "returns the correct answer when only outer letters match" do
    actual = longest_common_prefix(["cir", "car"])
    expected = "c"

    expect(actual).to eq(expected)
  end

  it "returns an empty string if there is no common prefix" do
    actual = longest_common_prefix(["dog","racecar","car"])
    expected = ""

    expect(actual).to eq(expected)
  end

  it "returns an empty string if the input is empty" do
    actual = longest_common_prefix([""])
    expected = ""

    expect(actual).to eq(expected)
  end
end
