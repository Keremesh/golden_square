require 'string_builder'

RSpec.describe StringBuilder do
  context "initially"
    it "initially returns an empty string as output" do 
      string_builder = StringBuilder.new
      expect(string_builder.output).to eq ""
    #we are testing two different pieces of behaviour, therefore end
    # firm rule of not having more than one expectation in a test 
    end
    it "initially returns a length of 0" do 
        string_builder = StringBuilder.new
        expect(string_builder.size).to eq 0
    end
    #"context" keyword - tool in rspec, sets up a subgroup of test for particular situations
    # hard to imagine that the below would pass and the context after would fail so we dont really need them
    # this was useful in the process of building the tests
    # context "given one addition of a string" do
    #     it "outputs that string" do
    #         string_builder = StringBuilder.new
    #         string_builder.add("hello")
    #         expect(string_builder.output).to eq "hello"
    #     end
    #     it "has a size of that string's size" do
    #         string_builder = StringBuilder.new
    #         string_builder.add("hello")
    #         expect(string_builder.size).to eq 5
    #     end
    #end
    context "given many additions of a string" do
        it "outputs that string" do
            string_builder = StringBuilder.new
            string_builder.add("hello")
            string_builder.add("ok")
            string_builder.add("den")
            expect(string_builder.output).to eq "hellookden"
        end
        it "has a size of that string's size" do
            string_builder = StringBuilder.new
            string_builder.add("hello")
            string_builder.add("ok")
            string_builder.add("den")
            expect(string_builder.size).to eq 10
        end
    end
    # it "initially returns a length of 0" do 
    #     string_builder = StringBuilder.new
    #     expect(string_builder.size).to eq 0
    # end
    
    # string_builder.add("ey")
    # result = stringBuilder.size
    # expect(result).to eq 4
    # end
end