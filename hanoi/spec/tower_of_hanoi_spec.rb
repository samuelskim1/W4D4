require 'rspec'
require 'tower_of_hanoi'

describe Hanoi do 
    subject(:game) {Hanoi.new}

    describe '#initialize' do
        it 'should initialize with three arrays representing towers' do
            expect(game.tower1).to be_truthy
            expect(game.tower2).to be_truthy
            expect(game.tower3).to be_truthy
        end

        

    end


end