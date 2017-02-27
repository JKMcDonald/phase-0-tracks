require_relative 'spaceship'

describe Spaceship do
  let(:spaceship) { Spaceship.new("Kyle", 10000) }

  it "has a readable name" do 
  	expect(spaceship.name).to eq "Kyle"
  end

  it "has a readable max speed" do
  	expect(spaceship.max_speed).to eq 10000
  end
 end