require '../index'

describe hello do
    it 'returns hello world' do
        expect(hello()).to eq('hello world')
    end
end