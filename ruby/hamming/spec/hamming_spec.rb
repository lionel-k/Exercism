require_relative '../hamming'

describe 'hamming' do
  it 'test_empty_strands' do
    expect(Hamming.compute('', '')).to eq(0)
  end
end
