var app = angular.module('app'); 

app.controller('catalogController', ['$scope', '$http', function ($scope, $http) {
	$scope.items = ['Cuchillos', 'Lamparas'];
	$scope.currentController = {
		controller: 'current'
	}
}]);