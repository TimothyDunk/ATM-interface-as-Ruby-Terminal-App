require '../index'
# this method won't be used, it's just for testing rspec
describe hello do
    it 'returns hello world' do
        expect(hello()).to eq('hello world')
    end
end