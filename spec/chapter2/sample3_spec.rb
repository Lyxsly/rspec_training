require_relative '../spec_helper.rb'

RSpec.describe Lottery do 
  describe 'KUJI' do
    it '当選確率が約25%になっていること' do 
      results = Lottery.generate_results(10000)
      win_count = results.count(&:win?)
      probability = win_count.to_f / 10000 * 100

      expect(probability).to be_within(1.0).of(25.0)
    end
  end
end
