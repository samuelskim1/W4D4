require 'rspec'
require 'tower_of_hanoi'

describe Hanoi do 
    subject(:game) {Hanoi.new}

    describe '#initialize' do
        it 'should initialize with three arrays representing towers' do
            expect(game.tower1).to be_an_instance_of(Array)
            expect(game.tower2).to eq([])
            expect(game.tower3).to eq([])
        end

        it 'the first tower should have 5 discs in descending order starting with 5' do
            expect(game.tower1).to eq([5,4,3,2,1])
        end


    end


end