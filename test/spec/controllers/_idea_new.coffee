'use strict'

describe 'Controller: IdeaNewCtrl', () ->

  # load the controller's module
  beforeEach module 'appIdeasFrontApp'

  IdeaNewCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    IdeaNewCtrl = $controller 'IdeaNewCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
