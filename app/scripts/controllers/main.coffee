'use strict'

angular.module('PathwaysApp')
  .controller 'MainCtrl', ($scope, geolocation) ->
    angular.extend $scope, center:
      lat: 51.563296
      lng: -0.107435
      zoom: 12
    $scope.position = geolocation.position()
    $scope.position.then (pos) ->
      center =
        lat: pos.coords.latitude
        lng: pos.coords.longitude
      console.log 'Detected location as:', center
      angular.extend $scope, center: center
      return center
    , (reason) ->
      console.log 'Could not determine your location:', reason
