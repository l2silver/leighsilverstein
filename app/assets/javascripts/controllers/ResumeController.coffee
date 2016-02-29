controllers = angular.module('controllers')

controllers.controller "ResumeController", ['$scope', '$resource', 
'globalService', ($scope, $resource, globalService) ->
	$scope.resume = [
		{
			group: "Experience"
			resume_posts: [
				{
					title: "Web Developer"
					company: "Simplistics Inc."
					city: "Toronto"
					state: "ON"
					start_time: "2015"
					end_time: "Current"
					resume_lines: [
						{
							bullet: "Using a combination of webpack, redux, and react, and my own two-way-rest plugin, developed complex websites using the most current frontend technologies"
						},
						{
							bullet: "Brought BDD, and node plugins to the workplace to significantly speed up development time"
						},
						{
							bullet: "Developed and optimized the entire advertising backend and frontend components of a popular mortgage website in Canada that registers more than twenty-thousand hits a day"
						}
					]
				},
				{
					title: "Bookkeeper/Analyst"
					company: "Camp Gesher"
					city: "Toronto"
					state: "ON"
					start_time: "2014"
					end_time: "2015"
					resume_lines: [
						{
							bullet: "Analyzing camper data using linear and logit regressions to find trends in retention rates, and distributing those findings through general reports and PowerPoint presentations"
						},
						{
							bullet: "Communicating with customers, board members, and staff members to certify that the bookkeeping was accurate based on government tax guidelines"
						}
					]
				},
				{
					title: "Graduate Assistant"
					company: "Ryerson University"
					city: "Toronto"
					state: "ON"
					start_time: "2014"
					end_time: "2014"
					resume_lines: [
						{
							bullet: "Assisting and collaborating with the professor of Business in Creative Media in planning and designing course assignments that accurately assessed how much students had learnt in a class of more than 200 people"
						},
						{
							bullet: "Grading short form assignments and thirty page business proposals with excellent attention to detail"
						}
					]
				},
				{
					title: "Leigh Silverstein Productions"
					company: ""
					city: "Toronto"
					state: "ON"
					start_time: "2010"
					end_time: "2013"
					resume_lines: [
						{
							bullet: "Creating premium DSLR videos for corporate and private customers using Adobe Photoshop, Illustrator, Premiere, After Effects, and Mocha"
						}
					]
				}
			]
		},{
			group: "Education"
			resume_posts: [
				{
					title: "MBA"
					company: "Ryerson University"
					city: "Toronto"
					state: "ON"
					start_time: "2013"
					end_time: "2014"
					resume_lines: [
						{
							bullet: "Researching innovative strategies, trends, and global developments that are shaping businesses across the world"
						},
						{
							bullet: "Completing a major research paper on labour trends across high income European countries"
						},
						{
							bullet: "($20,000 entrance grant award winner based on academic and volunteer merits)"
						}
					]
				},
				{
					title: "BFA (Film)"
					company: "Ryerson University"
					city: "Toronto"
					state: "ON"
					start_time: "2005"
					end_time: "2009"
					resume_lines: [
					]
				}
			]
		},
		{
			group: "Skills"
			resume_posts: [
				{
					title: ""
					company: ""
					city: ""
					state: ""
					start_time: ""
					end_time: ""
					resume_lines: [
						{
							bullet: "Developer Languages: PHP(laravel), Ruby(RoR), JS, CSS, SCSS, AngularJS, ReactJS, NOSQL, MySQL, PostgreSQL"
						},
						{
							bullet: "Microsoft Suite: Word, Excel, PowerPoint"
						},
						{
							bullet: "Photoshop, Illustrator, After Effects, Premiere, Mocha"
						}
					]
				}
			]
		},
		{
			group: "Projects"
			resume_posts: [
				{
					title: ""
					company: ""
					city: ""
					state: ""
					start_time: ""
					end_time: ""
					resume_lines: [
						{
							bullet: "Presume: The first ever open source Applicant Tracking System for Ruby on Rails"
						},
						{
							bullet: "http://cvstom.org: A ROR developed application that uses machine learning to automate resume building based on specific job posts"
						},
						{
							bullet: "GiveTo: A not-for-profit that produces free videos for charities in the GTA to support grant applications"
						}
					]
				}
			]
		}

	]
]