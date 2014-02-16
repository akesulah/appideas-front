'use strict'

angular.module('appIdeasFrontApp')
  .factory 'keywordFactory', ($http, $rootScope) ->
    # Service logic
    # ...


    # Public API here
    {
      getKeywords: () ->
        $http.get('api/keywords').success( (data) ->
          $rootScope.keywords = data
        )
    }
