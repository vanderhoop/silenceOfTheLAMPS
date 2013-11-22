require 'spec_helper'

describe Lamp do
  it "it is valid upon instantiation" do
    # lamp = Lamp.new
    expect(Lamp.new).to be_valid
  end

  it "is silent upon instantiation" do
    lamp = Lamp.new
    expect(lamp.is_silent).to be_true
  end

end
