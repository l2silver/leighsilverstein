app = angular.module('HomeApp', ['ng','templates', 'controllers', 'ngResource', "ngRoute", "ngAnimate"])
angular.module('controllers', [])

app.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "main.html"
        controller: 'MainController'
      )
      .when('/resume',
        templateUrl: "resume.html"
        controller: 'ResumeController'
      )
      .when('/writings',
        templateUrl: "writing.html"
        controller: 'WritingController'
      )
])

app.service 'globalService', [ '$rootScope' , ($rootScope)->
  globalService =  {
    publishData: (name, data)->
      $rootScope.$broadcast(name, data)
      this[name] = data

    addSubscriber: ($scope, $name_array)->
      angular.forEach($name_array, (name, index)->
        $scope.$on name, (event, data)->
          $scope[name] = data
        if globalJobPost[name] != undefined
          $scope[name] = globalService[name]
      )
  }

  return globalService
]

app.directive 'iconnav', ()->
  return {
    templateUrl: 'icon-nav.html'
  }
app.directive 'navigation', ()->
  return {
    templateUrl: 'nav.html'
  }