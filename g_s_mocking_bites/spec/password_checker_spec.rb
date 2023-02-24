require "password_checker"

RSpec.describe PasswordChecker do
  it "checks the password length is over 8 chars" do
    password = PasswordChecker.new
    expect(password.check"MoreThanEight").to eq true
  end
  context "when the password length is less than 8 chars" do
    it "fails" do
      password_checker = PasswordChecker.new
      expect{ password_checker.check("Tiny") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end 