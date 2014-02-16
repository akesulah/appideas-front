'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeaDetailsCtrl', ($scope, $routeParams, $http, $location, ideaFactory) ->
    
    $http.get("api/ideas/#{$routeParams.ideaId}").success( (data) ->
      $scope.idea = data
    )

    $scope.submitNewComment = ->
      $scope.newComment.id = $routeParams.ideaId
      ideaFactory.saveComment($scope.newComment)
      $location.path('/ideas');
    


