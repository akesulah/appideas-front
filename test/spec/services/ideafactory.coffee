'use strict'

describe 'Service: ideaFactory', () ->

  # load the service's module
  beforeEach module 'appIdeasFrontApp'

  # instantiate service
  ideaFactory = {}
  beforeEach inject (_ideaFactory_) ->
    ideaFactory = _ideaFactory_

  it 'should do something', () ->
    expect(!!ideaFactory).toBe true
