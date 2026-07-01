RSpec.describe 'chapter2' do
  message_1 = 'Hello'
  message_2 = 'Hello'

  it 'be' do
    expect(1+2).to be >= 3
  end
  it 'be2' do
    expect([message_1].first).to be message_1
    expect([message_1].first).to eq message_2
  end

  it 'be3' do
    expect(true).to be true
    expect(false).to be false
    expect(nil).to be nil
    expect(:foo).to be :foo
  end

  it 'truthy falsey' do
    expect(1).to be_truthy
    expect(nil).to be_falsey

    expect(1).to_not be true
    expect(2).to_not be false

    expect(1).to_not eq true
  end

  it 'change' do
    x = [1,2,3]
    expect{x.pop}.to change{x.size}.from(3).to(2)
    expect{x.push(10)}.to change{x.size}.by(1)
  end

  it 'include' do
    x = [1,2,3]
    expect(x).to include 1
    expect(x).to include 1,3
  end

  it 'raise_error' do
    expect{1/0}.to raise_error ZeroDivisionError
  end
end
#be_empty,(.save).to be_truthy
