'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeaNewCtrl', ($scope, $http, $location, ideaFactory, keywordFactory) ->

    keywordFactory.getKeywords()
    
    $scope.submitNewIdea = ->
      ideaFactory.saveIdea($scope.newIdea)
      $location.path('/ideas');

    $scope.order = "age"

    $scope.keyword_filter = []



