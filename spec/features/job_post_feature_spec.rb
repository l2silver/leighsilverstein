require 'rails_helper'

RSpec.describe "job post", :type => :feature, :js => true do

	fixtures :users
	let(:user){users(:activated_user)}
=begin	
	let(:job_post){user.job_posts.create(title: "Title0")}
	let(:resume_group){job_post.resume_groups.create(name: "group")}
	let(:resume_post){resume_group.resume_posts.create(name: "post", company: "company")}
	let!(:resume_line){resume_post.resume_lines.create(bullet: "bullet")}
=end
	let(:job_post){create(:job_post, user_id: user.id)}
	let(:resume_group){create(:resume_group, job_post_id: job_post.id)}
	let(:resume_post){create(:resume_post, resume_group_id: resume_group.id)}
	let!(:resume_line){create(:resume_line, resume_post_id: resume_post.id)}


	it "has authenticity token" do
		page.set_rack_session(:user_id => user.id)
		visit "/#/job_posts/#{job_post.id}"
		expect(page.find("[name='authenticity_token']").value).to_not eq("")
	end
end