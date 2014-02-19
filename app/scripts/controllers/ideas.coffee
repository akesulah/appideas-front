'use strict'

angular.module('appIdeasFrontApp')
  .controller 'IdeasCtrl', ($scope, $http, ideaFactory, keywordFactory) ->
        
    ideaFactory.getIdeas()

    keywordFactory.getKeywords()

    $scope.order = "-id"

    $scope.keyword_filter = []

