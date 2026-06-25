require_relative '../spec_helper.rb'

RSpec.describe ShoppingCart do 
  describe '#add' do
    it 'nilを追加するとエラー' do
      cart = ShoppingCart.new
      expect{cart.add nil}.to raise_error 'Item is nil.'
    end
  end
end

