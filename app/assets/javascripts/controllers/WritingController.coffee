controllers = angular.module('controllers')

controllers.controller "WritingController", ['$scope', '$resource', 
'globalService', ($scope, $resource, globalService) ->
	$scope.writings = [
		{
			name: "Growth Hacking"
			link_name: "growth_hacking.html"
		},
		{
			name: "The Value of an App"
			link_name: "app_worth.html"
		}
	]
	$scope.current_writing = $scope.writings[0].name

	$scope.changeCurrentWriting = (name)->
		$scope.current_writing = name
]