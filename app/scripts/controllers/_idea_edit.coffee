'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeaEditCtrl', ($scope, $routeParams, $http) ->

    $http.get("api/ideas/#{$routeParams.ideaId}").success( (data) ->
      $scope.idea = data
    )
    
    $http.get('api/keywords').success( (data) ->
      $scope.keywords = data
    )

    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]