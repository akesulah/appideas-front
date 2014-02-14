'use strict'

#http = require 'http'

angular.module('appIdeasFrontApp')
  .controller 'MainCtrl', ['$scope', '$http', ($scope, $http) ->

    $scope.ideas = []

    $http.get('./api/ideas').success((data) ->
      $scope.ideas = data
    )
    
    $http.get('./api/keywords').success((data) ->
      $scope.keywords = data
    )
]