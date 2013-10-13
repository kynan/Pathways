'use strict'

angular.module('PathwaysApp')
  .controller 'MainCtrl', ['$scope', ($scope) ->
    angular.extend $scope, center:
      lat: 51.563296
      lng: -0.107435
      zoom: 12
  ]
