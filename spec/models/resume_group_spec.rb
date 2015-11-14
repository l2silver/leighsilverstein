require 'rails_helper'

RSpec.describe ResumeGroup, type: :model do
  
  let(:resume_group){ResumeGroup.create(name: "Group", id: 1)}

  it "has children" do
  	resume_post = resume_group.children.create(name: "ResumePost")
  	expect(resume_post.class.name).to eq("ResumePost")
  end


end
