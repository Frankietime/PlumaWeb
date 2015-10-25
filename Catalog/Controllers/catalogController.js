var app = angular.module('app'); 

app.controller('catalogController', ['$scope', '$http', function ($scope, $http) {
	$scope.items = ['Cuchillos'];

	$scope.$on('routeChangeSuccess', function (route) {

	})
	$scope.currentController = {
		controller: 'current'
	}
}]);