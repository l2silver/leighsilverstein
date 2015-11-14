FactoryGirl.define do

	factory :job_post do
		sequence(:id){ |n| n }
	  	sequence(:title){|n| "Title#{n}"}
		raw "Example Job Line 1/nExample Job Line 2"
	end
end
