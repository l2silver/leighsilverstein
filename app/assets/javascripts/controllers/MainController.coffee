controllers = angular.module('controllers')

controllers.controller "MainController", ['$scope', 
'globalService', ($scope, globalService) ->
	$scope.email = "lsilversteinto@gmail.com"
]