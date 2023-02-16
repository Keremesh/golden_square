require 'check_codeword'
RSpec.describe "returns correct message if given the right codeword" do
    it "checks the codeword" do 
      result = check_codeword("horse")
      expect(result).to eq "Correct! Come in."
    end
    it "returns a close message" do
      result = check_codeword("he")
      expect(result).to eq "Close, but nope."
    end
    it "returns wrong message if given the wrong codeword" do 
      result = check_codeword("egg")
      expect(result).to eq "WRONG!"
    end
    it "returns a wrong message if codeword with just first letter" do
      result = check_codeword("hello")
      expect(result).to eq "WRONG!"
    end
    it "returns a wrong message if codeword with just last letter" do
      result = check_codeword("more")
      expect(result).to eq "WRONG!"
    end
end