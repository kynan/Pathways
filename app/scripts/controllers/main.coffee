'use strict'

angular.module('PathwaysApp')
  .controller 'MainCtrl', ($scope, geolocation, StreetCrime) ->
    angular.extend $scope, markers: {}, center:
      lat: 51.563296
      lng: -0.107435
      zoom: 14
    crimes = StreetCrime.query (crimes) ->
      markers = {}
      for crime in crimes
        if crime.category = 'violent-crime'
          markers[crime.id] =
            lat: Number(crime.location.latitude)
            lng: Number(crime.location.longitude)
            message: "Violent crime #{crime.location.street.name}<br /><strong>Outcome:</strong>#{crime.outcome_status.category}"
            focus: false
            draggable: false
      console.log markers
      angular.extend $scope, markers: markers
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
