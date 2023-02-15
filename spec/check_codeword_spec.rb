require 'check_codeword'
RSpec.describe "check_codeword method" do
    it "checks the codeword" do 
      result = check_codeword("horse")
      expect(result).to eq "Correct! Come in."
    end
    it "checks the codeword" do
      result = check_codeword("he")
      expect(result).to eq "Close, but nope."
    end
    it "checks the codeword" do 
      result = check_codeword("egg")
      expect(result).to eq "WRONG!"
    end
end