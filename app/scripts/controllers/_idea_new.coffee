'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeaNewCtrl', ($scope, $http) ->

    $http.get('api/keywords').success( (data) ->
      $scope.keywords = data
    )

    $scope.order = "age"

    $scope.keyword_filter = []

    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]