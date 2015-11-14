require 'rails_helper'

RSpec.describe UsersHelper, type: :helper do
  fixtures :users
  
  it "finds user with email" do
  	expect(user_email_exists?("example_1@cvstom.org")).to be_truthy
  end

  it "finds user with email uppercase" do
  	expect(user_email_exists?("EXAMPLE_1@cvstom.org")).to be_truthy
  end

end
