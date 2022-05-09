require './caesar_cipher'

describe '#ceaser_cipher' do
  it 'shifts lowercase strings' do
    expect(caesar_cipher('helloworld', 3)).to eql('khoorzruog')
  end

  it 'shifts uppercase strings' do
    expect(caesar_cipher('HELLOWORLD', 2)).to eql('JGNNQYQTNF')
  end

  it 'handles strings with non-alphabetic characters' do
    expect(caesar_cipher('hello world', 3)).to eql('khoor zruog')
  end

  it 'shifts mixed strings' do
    expect(caesar_cipher('hElLo-WoRlD', 2)).to eql('jGnNq-YqTnF')
  end

  it 'shifts backward' do
    expect(caesar_cipher('hello world', -3)).to eql('ebiil tloia')
  end

  it 'wraps shift around alphabet' do
    expect(caesar_cipher('hello world', 13)).to eql('uryyb jbeyq')
  end
end
