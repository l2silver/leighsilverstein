controllers = angular.module('controllers')

controllers.controller "WritingController", ['$scope', '$resource', 
'globalService', ($scope, $resource, globalService) ->
	$scope.writings = [
		{
			name: "Node vs Ruby"
			link_name: "node_vs_ruby.html"
		},
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