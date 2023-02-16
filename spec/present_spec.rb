# Wrong code that uses information learnt previously (testing methods, classes)
# require 'reminder'
# RSpec.describe Reminder do
#   context "when no task is set" do
#     it "fails" do
#       reminder = Reminder.new("Kay")
#       expect(reminder.remind()).to eq "No reminder set!"
#     end
#   end
# end



require 'present'

RSpec.describe Present do
  #This code is "as expected/as it should be"
  it "wraps and unwraps a value" do 
    present = Present.new
    present.wrap(6)
    expect(present.unwrap).to eq 6
  end
  # testing for the "fail" bit of code
  it "fails if we unwrap without wrapping first" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end
  it "fails if we wrap if already wrapped" do
    present = Present.new
    present.wrap(6)
    expect { present.wrap(7) }.to raise_error "All contents have already been wrapped."
  end

end