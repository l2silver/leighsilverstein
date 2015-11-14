FactoryGirl.define do

	factory :resume_group do
	  sequence(:id) { |n| n }
	  sequence(:name){|n| "Group#{n}"}
	end
end