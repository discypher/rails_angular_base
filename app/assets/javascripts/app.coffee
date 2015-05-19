app = angular.module('myApp', [
    'templates',
    'ngRoute',
    'ngResource',
    'controllers'
])

# Sample Routing
app.config(['$routeProvider',
  ($routeProvider) ->
    $routeProvider
      .when('/',
        templateUrl: 'index.html',
        controller: 'MyController'
      )
])

# Sample Controller
controllers= angular.module('controllers', [])
controllers.controller('MyController', [
  '$scope', '$routeParams', '$location', '$resource',
  ($scope, $routeParams, $location, $resource) ->
    
])
