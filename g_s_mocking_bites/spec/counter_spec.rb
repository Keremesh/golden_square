require 'counter'
RSpec.describe Counter do
    #initial case if we didn't have anything
    it "initially reports count of zero" do 
      counter = Counter.new
      expect(counter.report).to eq "Counted to 0 so far."
    end
    it "reports a count of added values with one addition" do 
      counter = Counter.new
      counter.add(7)
      expect(counter.report).to eq "Counted to 7 so far."
    end
    it "reports a count of all added values" do 
        counter = Counter.new
        counter.add(7)
        counter.add(2)
        counter.add(5)
        expect(counter.report).to eq "Counted to 14 so far."
      end
end
