'use strict'

describe 'Service: keywordFactory', () ->

  # load the service's module
  beforeEach module 'appIdeasFrontApp'

  # instantiate service
  keywordFactory = {}
  beforeEach inject (_keywordFactory_) ->
    keywordFactory = _keywordFactory_

  it 'should do something', () ->
    expect(!!keywordFactory).toBe true
