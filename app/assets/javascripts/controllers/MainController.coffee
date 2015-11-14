controllers = angular.module('controllers')

controllers.controller "MainController", ['$scope', '$resource', 
'globalService', '$location', "$window", ($scope, $resource, globalService, $location, $window) ->
	$scope.icons = {
		"list-ul" : "resume"
		"git" : "git"
		"pencil" : "writings"
	}

	$scope.changeBackground = (icon_name)->
		$("#main #background-image").removeClass("show")
		$("#main #background-image." + icon_name).addClass "show"
		return true
	$scope.resetBackground = ()->
		$("#main #background-image").removeClass("show")
		return true
	$scope.goTo = (path)->
		if path == "git"
			$window.open('http://facebook.com');
		else
			$location.path(path)
]