'use strict'

angular.module('appIdeasFrontApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'checklist-model'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/ideas',
        templateUrl: 'views/partials/_ideas_list.html'
        controller: 'IdeasCtrl'
      .when '/ideas/:ideaId',
        templateUrl: 'views/partials/_idea_details.html'
        controller: 'IdeaDetailsCtrl'
      .otherwise
        redirectTo: '/'
