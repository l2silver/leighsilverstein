controllers = angular.module('controllers')

controllers.controller "ResumeController", ['$scope', '$resource', 
'globalService', ($scope, $resource, globalService) ->
	$scope.resume = [
		{
			group: "Experience"
			resume_posts: [
				{
					title: "Full Stack Developer"
					company: "Simplistics Inc."
					city: "Toronto"
					state: "ON"
					start_time: "Aug 2015"
					end_time: "Current"
					resume_lines: [
						{
							bullet: ""
						}
					]
				}
			]
		},{
			group: "Education"
			resume_posts: [
				{
					title: "Full Stack Developer"
					company: "Simplistics Inc."
					city: "Toronto"
					state: "ON"
					start_time: "Aug 2015"
					end_time: "Current"
					resume_lines: [
						{
							bullet: ""
						},
						{
							bullet: ""
						},
					]
				}
			]
		}
	]
]