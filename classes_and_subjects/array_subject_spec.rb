RSpec.describe Array do
  it 'checks the length of the array' do
    expect(subject.length).to eq(0)
  end

  it 'adds an element to the array' do
    subject.push(45)
    expect(subject.length).to eq(1)
  end
end
