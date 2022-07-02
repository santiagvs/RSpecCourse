RSpec.describe Hash do
  subject(:sally) do
    [25, 68]
  end

  it 'checks if the subject has 2 elements' do
    expect(sally.length).to eq 2
    sally.pop
    expect(sally.length).to eq 1
  end

  it 'checks if the sally subjects is equal to the original array' do
    expect(sally.length).to eq subject.length
  end
end
