require 'rails_helper'

RSpec.describe ResumePost, type: :model do
  
  let(:resume_post){ResumePost.create(name: "Group", id: 1)}

  it "has children" do
  	resume_line = resume_post.children.create(bullet: "ResumeLine")
  	expect(resume_line.class.name).to eq("ResumeLine")
  end
end
