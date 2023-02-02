require 'rspec'
require 'TDD_projects'

describe '#my_uniq' do
    subject(:arr) {[1,2,2,3,3]}

    before(:each) do
        expect_any_instance_of(Array).not_to receive(:uniq)
    end

    it 'should raise an error when argument is not an array' do
        expect { my_uniq('cat') }.to raise_error(ArgumentError)
    end

    it 'should not mutate the original array' do
        expect(my_uniq(arr)).to_not be(arr)
    end

    it 'should return an array of unique elements' do
        expect( my_uniq(arr) ).to eq([1,2,3])
    end
end

describe '#two_sum' do
    subject(:arr) {[-1,0,2,-2,1]}

    it 'should raise an error when argument is not an array' do
        expect { two_sum('cat') }.to raise_error(ArgumentError)
    end

    it 'should return an array of pairs of indices' do
        expect(two_sum(arr)).to eq([[0,4], [2,3]])
    end

    it 'should be sorted smaller index before bigger index' do
        expect(two_sum(arr)).to eq([[0,4], [2,3]])
        expect(two_sum(arr)).to_not eq([[4,0], [3,2]])
    end


end