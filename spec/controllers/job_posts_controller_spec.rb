require 'rails_helper'

RSpec.describe JobPostsController, type: :controller do
	
	fixtures :users
	
	describe "GET #show" do
		let(:user){users(:activated_user)}
		let(:job_post){create(:job_post, user_id: user.id)}
		let(:resume_group){create(:resume_group, job_post_id: job_post.id)}
		let(:resume_post){create(:resume_post, resume_group_id: resume_group.id)}
		let!(:resume_line){create(:resume_line, resume_post_id: resume_post.id)}
		
		it "returns http success" do
			get :show, {id: job_post.id}, {user_id: user.id}
			expect(response).to have_http_status(:success)
		end

		it "returns session id" do
			get :show, {id: job_post.id}, {user_id: user.id}
			expect(session[:user_id]).to eq(user.id)
		end

		it "returns resume group" do
			get :show, {id: job_post.id}, {user_id: user.id}
			expect(JSON.parse(response.body).class.name).to eq("Array")
		end
	end
end
