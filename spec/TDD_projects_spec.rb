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

describe "#my_transpose" do
    subject(:arr) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]}

    before(:each) do
        expect_any_instance_of(Array).not_to receive(:transpose)
    end

    it 'should raise an error when argument is not an array' do
        expect { my_transpose('cat') }.to raise_error(ArgumentError)
    end

    it 'should swap the rows with columns' do
        expect(my_transpose(arr)).to eq([
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ])
    end
end

describe '#stock_picker' do
    subject(:arr) {[60,30,50,20,30]}

    it 'should raise an error when argument is not an array' do
        expect { my_transpose('cat') }.to raise_error(ArgumentError)
    end

    it 'should return a pair of days' do
        expect(stock_picker(arr).length).to eq(2)
    end

    it 'should return the most profitable pair of days' do
        expect(stock_picker(arr)).to eq([1,2])
    end

    it 'the sell day should not be before the buy day' do
        expect(stock_picker(arr)).to eq([1,2])
        expect(stock_picker(arr)).to_not eq([1,0])
    end

    


end