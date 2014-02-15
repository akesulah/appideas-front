'use strict'

describe 'Service: Ideaservice', () ->

  # load the service's module
  beforeEach module 'appIdeasFrontApp'

  # instantiate service
  Ideaservice = {}
  beforeEach inject (_Ideaservice_) ->
    Ideaservice = _Ideaservice_

  it 'should do something', () ->
    expect(!!Ideaservice).toBe true
