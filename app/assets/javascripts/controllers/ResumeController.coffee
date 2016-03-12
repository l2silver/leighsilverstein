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
							bullet: "Using a combination of Webpack, Redux, React, Immutable, and my own two-way-rest plugin, to develop complex websites with the most current frontend technologies"
						},
						{
							bullet: "Bringing BDD, and node plugins to the workplace to significantly speed up development time"
						},
						{
							bullet: "Developing and optimizing the entire advertising backend and frontend components of a popular website in Canada that registers more than twenty-thousand hits a day"
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
							bullet: "Frontend Languages and Libraries: JavaScript (ES6 with Babel), ImmutableJS, AngularJS, BackboneJS, ReactJS, jQuery, Redux, HTML5, CSS (Less, Sass)"
						},
						{
							bullet: "Backend Frameworks and Languages: Node(Sails), PHP(Laravel, CodeIgniter), Ruby(RoR)"
						},
						{
							bullet: "Database: MySQL, PostgreSQL, MongoDB, Redis, Elastic"
						},
						{
							bullet: "Build-tools: Gulp, Grunt, Yo, Bower, Webpack, Pagitter, NPM scripts"
						},
						{
							bullet: "Systems: Linux, Mac, Windows, Virtual Machines"
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
							bullet: "Two-Way-Rest: A react-redux plugin powered by immutablejs that facilitates changes to the state and any backend source"
						},
						{
							bullet: "Pagitter: A lightweight next generation file managing application (Node.js)"
						},
						{
							bullet: "Presume: The first open source Applicant Tracking System for Ruby on Rails"
						},
						{
							bullet: "http://cvstom.org: A Ruby on Rails developed application that uses machine learning to automate resume building based on specific job posts"
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