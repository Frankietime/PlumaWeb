var app = angular.module('app'); 

app.controller('catalogController', ['$scope', '$http', function ($scope, $http) {
	$scope.items = ['Cuchillos'];
	$scope.currentController = {
		controller: 'current'
	}
}]);