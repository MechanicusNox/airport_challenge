require "airplane"

describe Airplane do
  it "allows for an airplane to be made" do
    expect(Airplane.new).to be_a(Airplane)
  end

  it "allows for the plane to land" do
    airbus = Airplane.new
    expect(airbus).to respond_to(:land_at)
  end
end
