angular.module('gt-unsafe-filter', []).filter('unsafe', function($sce) {
  return function(text) {
    return $sce.trustAsHtml(text);
  };
});
