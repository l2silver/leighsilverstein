fixture.preload("users.json")

describe 'ResumeGroupController', ()->
	
	scope = null
	ctrl = null
	fixtures = null
	resume_groups = null
	job_post_id = 1
	globalJobPost = null


	beforeEach module('LoggedInApp')
	beforeEach ()->
    	fixtures = fixture.load("job_post_result.json")
    	resume_groups = fixtures[0]

	setupController = ()->
		inject ($controller, $rootScope, _globalJobPost_ )->
			scope = $rootScope.$new()
			globalJobPost = _globalJobPost_
			globalJobPost.publishData("authenticityToken","alpha")
			ctrl = $controller('ResumeGroupController', $scope: scope, globalJobPost: globalJobPost)

	beforeEach setupController()

	it 'validation set', () ->
		expect(scope.authenticityToken).toBe("alpha")