require './caesar_cipher'

describe '#ceaser_cipher' do
  it 'shifts lowercase strings' do
    expect(caesar_cipher('hello world', 3)).to eql('khoor zruog')
  end
end
