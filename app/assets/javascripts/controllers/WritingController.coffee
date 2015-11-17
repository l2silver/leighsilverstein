controllers = angular.module('controllers')

controllers.controller "WritingController", ['$scope', '$resource', 
'globalService', ($scope, $resource, globalService) ->
	$scope.writings = [
		{
			name: "Growth Hacking"
			link_name: "growth_hacking.html"
		}
	]
	$scope.current_writing = $scope.writings[0].name
]