FactoryGirl.define do
	factory :resume_line do
	  sequence(:id) { |n| n }
	  sequence(:bullet){|n| "Bullet#{n}"}
	end
end