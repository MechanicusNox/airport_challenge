require "airport"
require "airplane"

describe Airport do
  it "allows for an airport to be made" do
    expect(Airport.new).to be_a(Airport)
  end

  it "allows for a plane to land" do
    gatwick = Airport.new
    expect(gatwick).to respond_to(:land_plane)
  end

  it "allows for a plane to takeoff" do
    gatwick = Airport.new
    expect(gatwick).to respond_to(:dispatch_plane)
  end

  it "prevents a plane from landing in a full airport" do
    gatwick = Airport.new
    gatwick.land_plane("1")
    expect { gatwick.land_plane("2") }.to raise_error
  end

  it "no longer has a plane when it is dipatched" do
    gatwick = Airport.new
    gatwick.land_plane("1")
    gatwick.dispatch_plane
    expect(gatwick.planes).not_to include("1")
  end
end
