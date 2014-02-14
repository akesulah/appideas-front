'use strict'

describe 'Controller: IdeaEditCtrl', () ->

  # load the controller's module
  beforeEach module 'appIdeasFrontApp'

  IdeaEditCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    IdeaEditCtrl = $controller 'IdeaEditCtrl', {
      $scope: scope
    }

 # it 'should attach a list of awesomeThings to the scope', () ->
  #  expect(scope.awesomeThings.length).toBe 3
