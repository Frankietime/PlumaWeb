var app = angular.module('app');

app.factory('catalogFilterService', [ function () {
	var service = {};
	service.filter = function ($scope) {
		if (!$scope.filterArray[0]) {
            $scope.photos = $scope.rawPhotos;
            $scope.$emit('loadPhotos');
        } else {
        	$scope.filteredPhotos = []
			for(var filter in $scope.filterArray) {
				for(object in $scope.rawPhotos) {
					var key = $scope.filterArray[filter].key;
					var value = $scope.filterArray[filter].value;
					// checks that it is the correct value and it's not already in array
					if($scope.rawPhotos[object][key] == value && $scope.filteredPhotos.indexOf($scope.rawPhotos[object]) == -1) {
						$scope.filteredPhotos.push($scope.rawPhotos[object]);
					}
				};
			};
			$scope.photos = $scope.filteredPhotos;
		}
	};
	return service;
}]);