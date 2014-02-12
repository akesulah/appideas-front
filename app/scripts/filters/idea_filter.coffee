'use strict'

angular.module('appIdeasFrontApp')
  .filter 'ideaFilter', () ->
    (ideas, keyword_filter_list) ->
      return ideas if _.isEqual(keyword_filter_list, [])

      filtered_ideas = []
      for idea in ideas
        for keyword in idea.keywords
          if keyword.id in keyword_filter_list
            filtered_ideas.push idea
            break
      filtered_ideas
