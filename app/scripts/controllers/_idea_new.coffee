'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeaNewCtrl', ($scope, $http, $location) ->

    $scope.Keyword = {}
    $http.get('api/keywords').success( (data) ->
      $scope.keywords = data
    )
    
    $scope.submitNewIdea = ->
      console.log($scope.Keyword)
      data = $scope.newIdea
      console.log(data)
      $http.post "api/ideas", data
      $location.path('/ideas');
    ###
    $scope.submitNewIdea = ->
      console.log($scope.idea)
      data = $scope.idea
      console.log(data)
      $http.post('api/ideas', data).success(data)
    ###
    $scope.order = "age"

    $scope.keyword_filter = []

    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

