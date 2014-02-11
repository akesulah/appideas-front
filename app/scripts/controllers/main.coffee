'use strict'

#http = require 'http'

angular.module('appIdeasFrontApp')
  .controller 'MainCtrl', ['$scope', '$http', ($scope, $http) ->

    $scope.ideas = []
    $scope.keywords = [
      'Mobiili'
      'Startup'
      'Competition'
    ]

    $http.get('./api/ideas').success((data) ->
      $scope.ideas = data
    )
]
