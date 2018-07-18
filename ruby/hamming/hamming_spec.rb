require_relative 'hamming'

describe '#test_empty_strands' do

  it "returns 0 for empty strands" do
    expect(Hamming.compute('', '')).to eq(0)
  end
end
