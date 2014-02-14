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
      .when '/ideas',
        templateUrl: 'views/partials/_ideas_list.html'
        controller: 'IdeasCtrl'
      .when '/ideas/:ideaId',
        templateUrl: 'views/partials/_idea_details.html'
        controller: 'IdeaDetailsCtrl'
      .when '/idea/new',
        templateUrl: 'views/partials/_idea_new.html'
        controller: 'IdeaNewCtrl'
      .when '/ideas/:ideaId/edit',
        templateUrl: 'views/partials/_idea_edit.html'
        controller: 'IdeaEditCtrl'
      .otherwise
        redirectTo: '/ideas'
