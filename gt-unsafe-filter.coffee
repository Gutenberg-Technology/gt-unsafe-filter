angular.module('gt-unsafe-filter', [])
.filter 'unsafe', ($sce) ->
    return (text) -> $sce.trustAsHtml(text)
