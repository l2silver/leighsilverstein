fixture.preload("users.json")

describe 'resume group view', ()->
	
	scope = null
	ctrl = null
	fixtures = null
	resume_groups = null
	resume_group = null
	globalJobPost = null
	view = null


	beforeEach module('LoggedInApp')
	beforeEach ()->
    	fixtures = fixture.load("resume_groups.json")
    	resume_groups = fixtures[0]
    	resume_group = resume_groups[0]

	setupController = ()->
		inject ($controller, $rootScope, $templateCache, $compile, _globalJobPost_ )->
			scope = $rootScope.$new()
			scope.resume_group = resume_group
			globalJobPost = _globalJobPost_
			globalJobPost.publishData("formValidation","alpha")
			ctrl = $controller('ResumeGroupController', $scope: scope, globalJobPost: globalJobPost)
			compile = $compile
			html = $templateCache.get 'job_post/_resume_group.html'
			view = $compile(angular.element(html))(scope)
			scope.$digest()

	beforeEach setupController()

	describe 'view contains', ()->
		
		it 'should have form', () ->
			expect(view.find("[name='resume_group_#{resume_group.id}']").length).toBe(1)

		it 'should have email input', () ->
			expect(view.find("[name='resume_group[name]']").length).toBe(1)

		it 'should have id input', () ->
			expect(view.find("[name='resume_group[id]']").length).toBe(1)

		it "should have resume post fields", ()->
			expect(view.find("[name='resume_post[company]']").length).toBe(1)

	describe 'should be value', () ->
		it 'should be group name', () ->
			expect(view.find("[name='resume_group[name]']").val()).toBe(resume_group.name)

	describe 'validate form', ()->
		it "should have a valid form", () ->
			expect(view.find("[name='resume_group_#{resume_group.id}']").hasClass('ng-valid')).toBe(true)

		it "should have an invalid form", () ->
			view.find("[name='resume_group[name]']").val('').trigger('input')
			expect(view.find("[name='resume_group_#{resume_group.id}']").hasClass('ng-invalid')).toBe(true)

	describe 'error message', () ->
		it "should display error message", ()->
			view.find("[name='resume_group[name]']").val('').trigger('input')
			expect(view.find("[name='resume_group_#{resume_group.id}_error']").hasClass('ng-hide')).toBe(false)

		it "should not display error message", ()->
			expect(view.find("[name='resume_group_#{resume_group.id}_error']").hasClass('ng-hide')).toBe(true)