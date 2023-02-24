require 'greet'
RSpec.describe "greet method" do
    it "greets the named person" do
      result = greet("Keremet")
      expect(result).to eq "Hello, Keremet!"
    end
end