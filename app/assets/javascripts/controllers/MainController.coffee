controllers = angular.module('controllers')

controllers.controller "MainController", ['$scope', '$resource', 
'globalService', ($scope, $resource, globalService) ->
	$scope.icons = ["list-ul", "git", "pencil"]
	$scope.changeBackground = (icon_name)->
		console.log("over")
		$("#main #background-image").removeClass("show")
		$("#main #background-image." + icon_name).addClass "show"
		return true
	$scope.resetBackground = ()->
		console.log("leave")
		$("#main #background-image").removeClass("show")
		return true
]