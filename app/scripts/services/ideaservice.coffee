'use strict'

angular.module('appIdeasFrontApp')
  .service 'Ideaservice', ($http) ->
    # AngularJS will instantiate a singleton by calling "new" on this function

    getIdeas: () ->
      return $http.get('api/ideas')
  
