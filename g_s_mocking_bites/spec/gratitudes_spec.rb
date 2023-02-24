require "gratitudes"

RSpec.describe Gratitudes do
  it "does gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("food")
    gratitudes.add("accomodation")
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: food, accomodation"
  end
end