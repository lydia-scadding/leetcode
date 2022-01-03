require_relative '../find_the_town_judge'

describe '#find_judge' do
  it 'correctly finds the town judge with an input array of length 1' do
    return_val = find_judge(2, [[1, 2]])

    expect(return_val).to eq 2
  end

  it 'correctly finds the town judge with a longer input array' do
    return_val = find_judge(3, [[1, 3], [2, 3]])

    expect(return_val).to eq 3
  end

  it 'returns -1 if the town judge does not exist' do
    return_val = find_judge(3, [[1, 3], [2, 3], [3, 1]])

    expect(return_val).to eq(-1)
  end
end
