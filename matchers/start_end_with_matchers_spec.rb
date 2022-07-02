RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'checks for substring at beginning or the end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end

    it 'is case sensitive' do
      expect(subject).not_to start_with('Cat')
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'checks for elements at beginning or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)

      expect(subject).to end_with(:d)
      expect(subject).to end_with(:c, :d)
    end

    it { is_expected.to start_with(:a, :b)  }
  end
end
