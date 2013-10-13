'use strict'

angular.module('PathwaysApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'leaflet-directive'
])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
  ]
