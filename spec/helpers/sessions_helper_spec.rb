require 'rails_helper'

RSpec.describe SessionsHelper, type: :helper do
  	
  it "checks if user is logged in and fails" do
  	expect(logged_in?).to be_falsey
  end

  it "checks if user is logged in and passes" do
  	session[:user_id] = 1
  	expect(logged_in?).to be_truthy
  end

	context "user related functions" do
		fixtures :users
		let(:user){users(:user_1)}
		
		it "logs in user" do
			login(user.id)
			expect(session[:user_id]).to eq(user.id)
		end

		context "current_user" do

			it "finds with session id" do
				session[:user_id] = user.id
				expect(current_user).to eq(User.find(user.id))
			end

			it "finds with cookie id" do
				cookies.permanent.signed[:user_id] = user.id
				cookies.permanent.signed[:remember_token] = SecureRandom.base64
				remember_digest = User.digest(cookies.signed[:remember_token])
				user.update_attribute(:remember_digest, remember_digest)
				expect(current_user).to eq(user)
			end
		end

		context "remember" do 
			it "creates user_id cookie" do				
				remember(user)
				expect(cookies.signed[:user_id]).to eq(user.id)
			end

			it "creates remember_token cookie" do				
				remember(user)
				expect(cookies.signed[:remember_token]).to eq(user.remember_token)
			end

			it "creates remember_token cookie" do				
				remember(user)
				expect(user.authenticated?("remember", user.remember_token)).to be_truthy
			end
		end
	end

end
