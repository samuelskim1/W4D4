require 'rspec'
require 'TDD_projects'

describe '#my_uniq' do
    subject(:arr) {[1,2,2,3,3]}

    it 'should raise an error when argument is not an array' do
        expect { my_uniq('cat') }.to raise_error(ArgumentError)
    end

    it 'should not mutate the original array' do
        expect(my_uniq(arr)).to be(arr)
    end

    it 'should return an array of unique elements' do
        expect(my_uniq(arr)).to output([1,2,3])
    end


end