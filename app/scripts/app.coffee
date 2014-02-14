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
        templateUrl: 'views/partials/_ideas_list.html'
        controller: 'IdeasCtrl'
      .when '/ideas',
        templateUrl: 'views/partials/_ideas_list.html'
        controller: 'IdeasCtrl'
      .when '/ideas/:ideaId',
        templateUrl: 'views/partials/_idea_details.html'
        controller: 'IdeaDetailsCtrl'
      .when '/_idea_new',
        templateUrl: 'views/partials/_idea_new.html'
        controller: 'IdeaNewCtrl'
      .when '/_idea_edit',
        templateUrl: 'views/partials/_idea_edit.html'
        controller: 'IdeaEditCtrl'
      .otherwise
        redirectTo: '/'
