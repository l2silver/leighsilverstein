describe 'logged_out_view', ()->
	
	scope = null
	html = null
	ctrl = null
	compile = null
	view = null

	beforeEach module('LoggedOutApp')
	beforeEach module('templates')

	setupController = ()->
		inject(($controller, $rootScope, $templateCache, $compile, $httpBackend)->
			scope = $rootScope.$new()
			ctrl = $controller('LoggedOutController', $scope: scope)
			compile = $compile
			html = $templateCache.get 'landing_page/landing_page.html'
			view = $compile(angular.element(html))(scope)
			scope.$digest()
			)

	beforeEach setupController()

	it 'should find signup section', () ->
		expect(view.find("#Signup").length).toBe(1)

	it 'should find signin section', () ->
		expect(view.find("#Signin").length).toBe(1)

	it 'should find JPS section', () ->
		expect(view.find("#JPS").length).toBe(1)

	it 'should find header section', () ->
		expect(view.find("#header").length).toBe(1)

	it 'should find banner section', () ->
		expect(view.find("#banner").length).toBe(1)