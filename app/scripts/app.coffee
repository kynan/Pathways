'use strict'

angular.module('PathwaysApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'leaflet-directive',
  'ngGeolocation'
])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
  ]
