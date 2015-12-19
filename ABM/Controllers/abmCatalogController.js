var abm = angular.module('abm');

abm.controller('abmCatalogController', ['$scope', '$http', '$routeParams', function ($scope, $http, $routeParams) {
	$scope.cookie = true;
	 var product = $routeParams.product;
    // default value when no value in $routeParams
    if (!product) {
    	product = 'cuchillos';
    	// whe need an error handler service
    }
    // get product data
	$http.get('/Backend/ABM/Controllers/abmController.php?' + product, {cache: true}).success(function (data) {
		data;
	});
}]);