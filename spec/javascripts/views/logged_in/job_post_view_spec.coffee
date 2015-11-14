fixture.preload("users.json")

describe 'job post view', ()->
	
	scope = null
	html = null
	ctrl = null
	compile = null
	view = null
	resume_groups = null
	params = null
	httpBackend = null
	job_post_id = 0

	beforeEach module('LoggedInApp')
	beforeEach module('templates')
	beforeEach ()->
    	fixtures = fixture.load("job_post_result.json")
    	resume_groups = fixtures[0]
	

	setupController = ()->
		inject(($controller, $rootScope, $templateCache, $compile, $httpBackend, $routeParams)->
			scope = $rootScope.$new()
			params = $routeParams
			params.job_post_id = 0
			httpBackend = $httpBackend
			httpBackend.whenGET("/job_posts/#{job_post_id}").respond(200, resume_groups)
			httpBackend.whenGET(/^\/job_posts\?id\=.*/).respond(200, null)
			ctrl = $controller('JobPostController', $scope: scope)
			compile = $compile
			html = $templateCache.get 'job_post/job_post.html'
			view = $compile(angular.element(html))(scope)
			scope.$digest()
			)

	beforeEach setupController()

	
	describe 'view contains', ()->
		
		it 'should find heading', () ->
			expect(view.find("h1").length).toBe(1)