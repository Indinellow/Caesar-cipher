require './caesar_cipher.rb'

describe '#shift_char' do
  it 'shifts A to B correctly' do
    expect(shift_char(65, 1, 65, 90)).to eql(66)
  end

  it 'shifts a to b correctly' do
    expect(shift_char(97, 1, 97, 122)).to eql(98)
  end
end

describe '#caesar_cipher' do 
  it "shifts 'What a string!' to 'Bmfy f xywnsl!' if given 5" do
    expect(caesar_cipher('What a string!',5)).to eql('Bmfy f xywnsl!')
  end

  it "shifts 'This is easy.' to 'Wklv lv hdvb.' if given 3" do
    expect(caesar_cipher('This is easy.',3)).to eql('Wklv lv hdvb.')
  end
end

