require_relative "../valid_parentheses"

describe "#is_valid" do
  it "returns true for valid parentheses when not nested" do
    expect(is_valid("()")).to eq(true)
    expect(is_valid("()[]{}")).to eq(true)
  end

  it "returns true for valid parentheses when nested" do
    expect(is_valid("{[]}")).to eq(true)
    expect(is_valid("(((())))")).to eq(true)
  end

  it "returns false for invalid parentheses" do
    expect(is_valid("{]")).to eq(false)
    expect(is_valid("([)]")).to eq(false)
  end
end
