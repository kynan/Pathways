'use strict'

angular.module('PathwaysApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize'
])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
  ]