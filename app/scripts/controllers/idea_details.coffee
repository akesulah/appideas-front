'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeaDetailsCtrl', ($scope, $routeParams, $http) ->

    $http.get("api/ideas/#{$routeParams.ideaId}").success( (data) ->
      $scope.idea = data
    )

    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
