var app = angular.module('app'); 

app.controller('cuchillosController', ['$scope', '$rootScope', '$http', 'catalogFilterService', 'Lightbox', function ($scope, $rootScope, $http, catalogFilterService, Lightbox) {
	$scope.openLightboxModal = function (iterator, index) {
                Lightbox.openModal($scope.photos, iterator);
                Lightbox.title = $scope.photos[index].nombre;
                Lightbox.description = $scope.photos[index].info;
                $rootScope.singleView = false;
            };
	$http.get('Backend/Controllers/cuchillos.php').success(function (data) {
		$scope.cuchillosData = data;
		$scope.hojas = getHojas($scope.cuchillosData);
		$scope.years = getYears($scope.cuchillosData);
		// define filters
		$scope.filters = {
			hoja: {
				name: 'Hoja',
				filters: $scope.hojas
			},
			tipo: {
				name: 'Año',
				filters: $scope.years
			}
		};
		$scope.photos = getPhotos($scope.cuchillosData);
		$scope.rawPhotos = getPhotos($scope.cuchillosData);
		$scope.$emit('loadPhotos');
		console.log('cuchillos');
	}).error(function (data) {
		console.log('connection request failed!');
	});
	// fill catalog objects
	var getPhotos = function (cuchillos) {
		var photos = [];
		for (var cuchillo in cuchillos) {
			photos.push({
				"picMin": '/Content/imgs/thumbnails/' + cuchillos[cuchillo].picMin,
				"picMax": '/Content/imgs/' + cuchillos[cuchillo].picMax,
				"nombre": cuchillos[cuchillo].Nombre,
				"Hoja": cuchillos[cuchillo].Hoja,
				"info": cuchillos[cuchillo].Info,
				"Año": cuchillos[cuchillo].Anio,
				"id": cuchillos[cuchillo].Id
			});
		};
		return photos;
	}
	var getHojas = function (cuchillos) {
		var hojas = [];
		for(var i = 0; i < cuchillos.length; i ++) {
			if(hojas.indexOf(cuchillos[i].Hoja) == -1) {
				var hoja = cuchillos[i].Hoja
				hojas.push(hoja);
			}
		};
		return hojas;
	}
	var getYears = function (cuchillos) {
		var years = [];
		for(var i = 0; i < cuchillos.length; i ++) {
			if(cuchillos[i].Anio != null && (years.indexOf(cuchillos[i].Anio) == -1)) {
				var year = cuchillos[i].Anio;
				years.push(year);
			}
		};
		return years;
	}
	$scope.$watchCollection('$scope.photos', function () {
		$scope.$emit('loadPhotos');
	});	
	$scope.filterArray = [];
	$scope.$on('filter-update', function () {
		catalogFilterService.filter($scope);
		$scope.$emit('loadPhotos');
	});
}]);