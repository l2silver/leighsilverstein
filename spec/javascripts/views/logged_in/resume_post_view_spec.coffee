fixture.preload("users.json")

describe 'resume post view', ()->
	
	scope = null
	ctrl = null
	fixtures = null
	resume_groups = null
	resume_group = null
	resume_post = null
	globalJobPost = null
	view = null


	beforeEach module('LoggedInApp')
	beforeEach ()->
    	fixtures = fixture.load("resume_groups.json")
    	resume_groups = fixtures[0]
    	resume_group = resume_groups[0]
    	resume_post = resume_group.resume_posts[0]

	setupController = ()->
		inject ($controller, $rootScope, $templateCache, $compile, _globalJobPost_ )->
			scope = $rootScope.$new()
			scope.resume_post = resume_post
			globalJobPost = _globalJobPost_
			globalJobPost.publishData("formValidation","alpha")
			ctrl = $controller('ResumeGroupController', $scope: scope, globalJobPost: globalJobPost)
			compile = $compile
			html = $templateCache.get 'job_post/_resume_post.html'
			view = $compile(angular.element(html))(scope)
			scope.$digest()

	beforeEach setupController()

	describe 'view contains', ()->

		it 'should have form', () ->
			expect(view.find("[name='resume_post_#{resume_post.id}']").length).toBe(1)

		it 'should have email input', () ->
			expect(view.find("[name='resume_post[name]']").length).toBe(1)

		it 'should have id input', () ->
			expect(view.find("[name='resume_post[id]']").length).toBe(1)

		it "should have company field", ()->
			expect(view.find("[name='resume_post[company]']").length).toBe(1)

		it "should have city field", ()->
			expect(view.find("[name='resume_post[city]']").length).toBe(1)

		it "should have state field", ()->
			expect(view.find("[name='resume_post[state]']").length).toBe(1)

		it "should have start_time field", ()->
			expect(view.find("[name='resume_post[start_time]']").length).toBe(1)

		it "should have end_time field", ()->
			expect(view.find("[name='resume_post[end_time]']").length).toBe(1)


	describe 'should be value', () ->
		it 'name', () ->
			expect(view.find("[name='resume_post[name]']").val()).toBe(resume_post.name)

		it 'company', () ->	
			expect(view.find("[name='resume_post[company]']").val()).toBe(resume_post.company)

		it 'city', () ->	
			expect(view.find("[name='resume_post[city]']").val()).toBe(resume_post.city)

		it 'state', () ->	
			expect(view.find("[name='resume_post[state]']").val()).toBe(resume_post.state)

		it 'start_time', () ->	
			expect(view.find("[name='resume_post[start_time]']").val()).toBe(resume_post.start_time)

		it 'end_time', () ->	
			expect(view.find("[name='resume_post[end_time]']").val()).toBe(resume_post.end_time)

		it 'id', () ->	
			expect(view.find("[name='resume_post[id]']").val()).toBe("#{resume_post.id}")