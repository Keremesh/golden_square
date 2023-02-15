require 'report_length'
RSpec.describe "report_length method" do
    it "returns the number of characters in the string" do
        result = report_length("flower")
        expect(result).to eq "This string was 6 characters long."
    end
end