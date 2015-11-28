var app = angular.module('app'); 

app.controller('catalogController', ['$scope', '$rootScope', '$http', '$routeParams', 'catalogFilterService', 'catalogProductService', 'Lightbox', 
	function ($scope, $rootScope, $http, $routeParams, catalogFilterService, catalogProductService, Lightbox) {
	// current items in stock TODO: fetch from Db when initializing website and storing in cache
	$scope.items = ['Cuchillos'];
	// single view function
	$scope.openLightboxModal = function (iterator, index) {
                Lightbox.openModal($scope.photos, iterator);                
                $rootScope.singleView = false;
            };
    // default value when no value in $routeParams
    var defaultValue = 'cuchillos';
    var product = $routeParams.product;
    // get product data
	$http.get('Backend/Controllers/' + product || defaultValue + '.php', {cache: true}).success(function (data) {
		$scope.cuchillosData = data;
		// sets product specific items into $scope
		catalogProductService.getItems($scope, product, data);
		// load photos
		$scope.$emit('loadPhotos');
		console.log('cuchillos');
	}).error(function (data) {
		console.log('connection request failed!');
	});
	// fill catalog objects	
	$scope.$watchCollection('$scope.photos', function () {
		$scope.$emit('loadPhotos');
	});
	// filtering by items in this array
	$scope.filterArray = [];
	// filter calls and gallery updates
	$scope.$on('filter-update', function () {
		catalogFilterService.filter($scope);
		$scope.$emit('loadPhotos');
	});
}]);