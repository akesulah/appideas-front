'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeasCtrl', ($scope, $http) ->

    $http.get('api/ideas').success( (data) ->
      $scope.ideas = data
    )

    $http.get('api/keywords').success( (data) ->
      $scope.keywords = data
    )

    $scope.order = "age"

    $scope.keyword_filter = []
