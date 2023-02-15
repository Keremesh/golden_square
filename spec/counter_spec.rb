require 'counter'
RSpec.describe Counter do
    it "does counting" do 
    counter = Counter.new("0") 
    counter.add("1")
    result = counter.report()
    expect(result).to eq "Counted to 1"
    end
end
