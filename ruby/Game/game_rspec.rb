require_relative 'word_game'

describe Word_guess do 
	let (:word_guess) {Word_guess.new}

	it "replaces letters with underlines" do
	  expect(word_guess.converter("hello")).to eq ["_", "_", "_", "_", "_"] 
	end

end
