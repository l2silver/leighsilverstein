fixture.preload("users.json")

describe 'resume line view', ()->
	
	scope = null
	ctrl = null
	fixtures = null
	resume_groups = null
	resume_group = null
	resume_post = null
	resume_line = null
	globalJobPost = null
	view = null


	beforeEach module('LoggedInApp')
	beforeEach ()->
    	fixtures = fixture.load("resume_groups.json")
    	resume_groups = fixtures[0]
    	resume_group = resume_groups[0]
    	resume_post = resume_group.resume_posts[0]
    	resume_line = resume_post.resume_lines[0]

	setupController = ()->
		inject ($controller, $rootScope, $templateCache, $compile, _globalJobPost_ )->
			scope = $rootScope.$new()
			scope.resume_line = resume_line
			globalJobPost = _globalJobPost_
			globalJobPost.publishData("formValidation","alpha")
			ctrl = $controller('ResumeGroupController', $scope: scope, globalJobPost: globalJobPost)
			compile = $compile
			html = $templateCache.get 'job_post/_resume_line.html'
			view = $compile(angular.element(html))(scope)
			scope.$digest()

	beforeEach setupController()

	describe 'view contains', ()->

		it 'should have form', () ->
			expect(view.find("[name='resume_line_#{resume_line.id}']").length).toBe(1)

		it 'should have bullet input', () ->
			expect(view.find("[name='resume_line[bullet]']").length).toBe(1)

		it 'should have id input', () ->
			expect(view.find("[name='resume_line[id]']").length).toBe(1)

	describe 'should be value', () ->
		it 'name', () ->
			expect(view.find("[name='resume_line[name]']").val()).toBe(resume_line.name)

		it 'id', () ->	
			expect(view.find("[name='resume_line[id]']").val()).toBe("#{resume_line.id}")