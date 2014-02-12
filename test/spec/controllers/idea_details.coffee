'use strict'

describe 'Controller: IdeaDetailsCtrl', () ->

  # load the controller's module
  beforeEach module 'appIdeasFrontApp'

  IdeaDetailsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    IdeaDetailsCtrl = $controller 'IdeaDetailsCtrl', {
      $scope: scope
    }

  xit 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
