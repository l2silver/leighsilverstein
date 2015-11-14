FactoryGirl.define do
	
	factory :resume_post do
		sequence(:id) { |n| n }
		sequence(:name){|n| "Post#{n}"}
		company "CompanyXYZ"
		state "Ontario"
		city "Toronto"
		start_time "January 2014"
		end_time "Dec 2014"
	end
end