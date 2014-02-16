'use strict'

angular.module('appIdeasFrontApp')
  .factory 'ideaFactory', ($http, $rootScope) ->
    # Service logic
    # ...
  
    # Public API here
    {
      getIdeas: () ->
        $http.get('api/ideas').then( (responce) ->
          $rootScope.ideas = responce.data
        )

      saveIdea: (data) ->
        $http.post('api/ideas', data).success(data)

      saveComment: (data) ->
        $http.put("api/ideas/#{data.id}", data)
    }

