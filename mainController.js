var app = angular.module('app'); 

app.controller('mainController', ['$scope', '$http', function ($scope, $http) {
	$http.get('Backend/Controllers/lamparas.php').success(function (data) {
		console.log('connection succeded!');
	}).error(function (data) {
		console.log('connection request failed!');
	});
}]);