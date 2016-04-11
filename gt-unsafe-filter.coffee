angular.module('gt.unsafefilter', [])
.filter 'unsafe', ($sce) ->
    return (text) -> $sce.trustAsHtml(text)
