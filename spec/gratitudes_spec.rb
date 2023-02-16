require "gratitudes"

RSpec.describe Gratitudes do
  it "does gratitudes" do
    gratitudes = Gratitudes.new
    gratitudes.add("Thanks")
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: Thanks"
  end
end