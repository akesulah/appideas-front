'use strict'

angular.module('appIdeasFrontApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/idea',
		templateUrl: 'views/main.html'
		controller: 'IdeaController'
      .otherwise
        redirectTo: '/'
