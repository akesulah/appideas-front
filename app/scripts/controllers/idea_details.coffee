'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeaDetailsCtrl', ($scope, $routeParams, $http) ->
    
    $http.get("api/ideas/#{$routeParams.ideaId}").success( (data) ->
      $scope.idea = data
    )
    
    #$scope.idea = GetIdea.get(ideaId: $routeParams.ideaId)
     
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
