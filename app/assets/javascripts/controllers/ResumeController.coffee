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
							bullet: "Collaborating with clients to find the optimal combination of in-house development with 3rd party software to produce a  web product that is within budget and completed before the deadline"
						},
						{
							bullet: "Identifying relevant information and content for clients to improve SEO and the (UX) user experience"
						},
						{
							bullet: "Using modern design philosophies and implementation architecture such as TDD (test driven development), generators, dependency compilers, and so forth, to create robust products in the fastest time possible"
						}
					]
				},
				{
					title: "Bookkeeper/Analyst"
					company: "Camp Gesher"
					city: "Toronto"
					state: "ON"
					start_time: "Oct 2014"
					end_time: "Aug 2015"
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
					start_time: "Jan 2014"
					end_time: "April 2014"
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
					start_time: "Sep 2014"
					end_time: "Apr 2013"
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
					start_time: "May 2013"
					end_time: "Sep 2014"
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
					start_time: "Sep 2005"
					end_time: "May 2014"
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
							bullet: "Developer Languages: PHP, ROR, Java, JS, CSS, SCSS, AngularJS, MySQL, PostgreSQL"
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