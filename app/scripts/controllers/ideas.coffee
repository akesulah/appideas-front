'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeasCtrl', ($scope, $http, Ideaservice) ->
    
    $http.get('api/ideas').success( (data) ->
      $scope.ideas = data
    )
    
    $scope.ideas = Ideaservice.getIdeas()
    $http.get('api/keywords').success( (data) ->
      $scope.keywords = data
    )

    $scope.order = "age"

    $scope.keyword_filter = []
