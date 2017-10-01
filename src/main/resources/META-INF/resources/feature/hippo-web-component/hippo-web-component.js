(function () {
    "use strict";
    angular.module('hippo.essentials')
        .controller('webComponentCtrl', function ($scope, $sce, $log, $rootScope, $http) {
            $scope.title = "Web Component Plugin";
        })
})();
