require_relative "../reverse_integer"

describe "#reverse" do
  it "returns the correct answer" do
    actual = reverse(123)
    expected = 321

    expect(actual).to eq(expected)
  end

  it "preserves the minus sign" do
    actual = reverse(-123)
    expected = -321

    expect(actual).to eq(expected)
  end

  it "knocks zero off the front of a number" do
    actual = reverse(120)
    expected = 21

    expect(actual).to eq(expected)
  end

  it "returns 0 for an input of 0" do
    actual = reverse(0)
    expected = 0

    expect(actual).to eq(expected)
  end

  it "returns the correct answer for a longer number" do
    actual = reverse(-12948734059834)
    expected = -43895043784921

    expect(actual).to eq(expected)
  end
end
