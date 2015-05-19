describe 'HomeController', ->
  scope        = null
  ctrl         = null
  location     = null
  routeParams  = null
  resource     = null
  httpBackend  = null

  setupController = () ->
    inject(($location, $routeParams, $rootScope, $resource,
           $httpBackend, $controller) ->
      scope       = $rootScope.$new()
      location    = $location
      resource    = $resource
      routeParams = $routeParams
      httpBackend = $httpBackend
      ctrl        = $controller('MyController',
                                $scope: scope,
                                $location: location)
    )

  beforeEach(module('myApp'))
  afterEach ->
    httpBackend.verifyNoOutstandingExpectation()
    httpBackend.verifyNoOutstandingRequest()

  describe 'test something here', ->
    beforeEach(setupController())

    it 'does something', ->
