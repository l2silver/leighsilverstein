fixture.preload("users.json")

describe 'JobPostController', ()->
	
	scope = null
	ctrl = null
	httpBackend = null
	fixtures = null
	headers_check = null
	resume_groups = null
	routeParams = null
	job_post_id = 1
	globalJobPost = null


	beforeEach module('LoggedInApp')
	beforeEach ()->
    	fixtures = fixture.load("job_post_result.json")
    	resume_groups = fixtures[0]

	setupController = ()->
		inject ($controller, $rootScope, $templateCache, $compile, $httpBackend, $routeParams, _globalJobPost_ )->
			scope = $rootScope.$new()
			routeParams = $routeParams
			routeParams.job_post_id = job_post_id
			globalJobPost = _globalJobPost_
			globalJobPost.publishData("formValidation","alpha")
			ctrl = $controller('JobPostController', $scope: scope, globalJobPost: globalJobPost)
			httpBackend = $httpBackend
			httpBackend.whenGET("/job_posts/#{job_post_id}").respond(200, resume_groups)
			httpBackend.whenGET(/^\/job_posts\?id\=.*/).respond(200, null)

	beforeEach setupController()

	it 'should set resume groups', () ->
		httpBackend.flush()
		expect(scope.resume_groups[0].id).toBe(resume_groups[0].group_id)

	it 'should set resume posts in resume groups', () ->
		httpBackend.flush()
		expect(scope.resume_groups[0].resume_posts[0].id).toBe(resume_groups[0].post_id)

	it 'should set resume lines in resume posts', () ->
		httpBackend.flush()
		expect(scope.resume_groups[0].resume_posts[0].resume_lines[0].id).toBe(resume_groups[0].line_id)