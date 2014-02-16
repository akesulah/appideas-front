'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeasCtrl', ($scope, $http, ideaFactory, keywordFactory) ->
        
    ideaFactory.getIdeas()

    keywordFactory.getKeywords()

    $scope.order = "age"

    $scope.keyword_filter = []

