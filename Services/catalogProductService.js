var app = angular.module('app');

app.factory('catalogProductService', [ 'catalogFilterService', function (catalogFilterService) {
	var service = {};
	service.getItems = function (scope, product, data) {
		switch (product) {
			case 'cuchillos':
				getItemsForCuchillos(scope, data);
				break;
			default:
				console.log('invalid product');
				break;
		}
	}
	var getItemsForCuchillos = function (scope, data) {
		// functions for parsing incoming data
		var getBlades = function (cuchillos) {
			var blades = [];
			for(var i = 0; i < cuchillos.length; i ++) {
				if(blades.indexOf(cuchillos[i].Hoja) == -1) {
					var blade = cuchillos[i].Hoja
					blades.push(blade);
				}
			};
			return blades;
		}
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
		// set items
		var items = {
			blades: getBlades(data),
			years: getYears(data),
			photos: getPhotos(data),
			rawPhotos: getPhotos(data),
			filters: {
				hoja: {
					name: 'Hoja',
					filters: scope.blades,
					hashCode: catalogFilterService
				},
				tipo: {
					name: 'Año',
					filters: scope.years
				}
			}
		}
		// add items to scope
		angular.extend(scope, items);
	};
	
	return service;
}]);