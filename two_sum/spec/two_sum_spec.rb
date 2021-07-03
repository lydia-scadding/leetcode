require_relative "../two_sum"

describe "#two_sum" do
  it "returns the correct answer for a longer array" do
    actual = two_sum([2, 7, 11, 15], 9)
    expected = [0, 1]

    expect(actual).to eq(expected)
  end

  it "returns the correct answer for final two indices" do
    actual = two_sum([3, 2, 4], 6)
    expected = [1, 2]

    expect(actual).to eq(expected)
  end

  it "returns the correct answer for a short array" do
    actual = two_sum([3, 3], 6)
    expected = [0, 1]

    expect(actual).to eq(expected)
  end
end
