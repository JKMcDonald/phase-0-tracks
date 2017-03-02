require_relative 'game'

describe Game do 
	let(:game) {Game.new('elephant')} 
	
	it "sums the amount of total guesses" do
		expect(game.total_guesses).to eq 8
	end

	it "returns the index of the letter" do
		expect(game.find_index('e')).to eq [0, 2]
	end

	it "returns a string with guessed letters filled in" do
		expect(game.switch('e')).to eq 'e_e_____'
	end
end
