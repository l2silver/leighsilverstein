controllers = angular.module('controllers')

controllers.controller "HomeController", ['$scope', '$resource', 
'globalService', '$window', '$location', ($scope, $resource, globalService, $window, $location) ->
	$scope.icons = {
		"envelope"	: ""
		"list-ul" 	: "resume"
		"git" 		: "git"
		"pencil" 	: "writings"
	}
	$scope.changeBackground = (icon_name)->
		$("#home #background-image").removeClass("show")
		$("#home #background-image." + icon_name).addClass "show"
		$("#home #background-image.overlay").addClass "show"
		return true
	$scope.resetBackground = ()->
		$("#home #background-image").removeClass("show")
		return true
	$scope.goTo = (path)->
		$("#home #background-image").removeClass("show")
		if path == "git"
			$window.open('https://github.com/l2silver');
		else
			$location.path(path)	
]