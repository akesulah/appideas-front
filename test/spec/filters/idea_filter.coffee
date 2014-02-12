'use strict'

describe 'Filter: ideaFilter', () ->

  # load the filter's module
  beforeEach module 'appIdeasFrontApp'

  # initialize a new instance of the filter before each test
  ideaFilter = {}
  beforeEach inject ($filter) ->
    ideaFilter = $filter 'ideaFilter'

  xit 'should return the input prefixed with "ideaFilter filter:"', () ->
    #text = 'angularjs'
    #expect(ideaFilter text).toBe ('ideaFilter filter: ' + text)
