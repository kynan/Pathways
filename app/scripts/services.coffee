'use strict'

angular.module('streetCrimveService', ['ngResource'])
  .factory 'StreetCrime', ($resource) ->
    $resource 'crime.json'
