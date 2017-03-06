require_relative 'spaceship'

describe Spaceship do
	let(:spaceship) {Spaceship.new('KYLE', 10000000)}

	it "disables the shield" do
		expect(spaceship.disable_shield).to eq true
	end

	it "warps to a location at a max speed" do
		expect(spaceship.warp_to('Namibia')).to eq 'Namibia'
	end
end
