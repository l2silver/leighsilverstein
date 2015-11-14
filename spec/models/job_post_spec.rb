require 'rails_helper'

RSpec.describe JobPost, type: :model do
  
  let(:job_post){JobPost.create(title: "Example Job Post")}

  it "has resume resume children" do
  	resume_group = job_post.resume_groups.create(name: "ResumeGroup")
  	expect(resume_group.class.name).to eq("ResumeGroup")
  end
end
