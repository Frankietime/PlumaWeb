var app = angular.module('app', ['ngRoute', 'bootstrapLightbox', 'ui.bootstrap', 'wu.masonry']);

app.config(['$routeProvider', 'LightboxProvider', function ($routeProvider, LightboxProvider) {
	$routeProvider.
    when('/home', { templateUrl: '/home.html', controller: 'homeController' }).
    when('/autor', { templateUrl: '/autor.html', controller: 'homeController' }).
		when('/contacto', { templateUrl: '/contacto.html', controller: 'homeController' }).
		when('/catalog/', { templateUrl: '/Catalog/Views/catalog.html', controller: 'catalogController', reloadOnSearch: false }).
		when('/catalog/:product', { templateUrl: '/Catalog/Views/catalog.html', controller: 'catalogController', reloadOnSearch: false }).
		when('/catalog-description/:description', { templateUrl: '/Catalog/Views/Templates/catalog-description.html', controller: 'catalogDescriptionController', reloadOnSearch: false }).
		otherwise({ redirectTo: '/home' });
	LightboxProvider.templateUrl = '/Catalog/Views/Templates/lightbox2.html';
	LightboxProvider.fullScreenMode = true;
	// set the caption of each image as its text color
  /*LightboxProvider.getImageCaption = function (imageUrl) {
    return '#' + imageUrl.match(/00\/(\w+)/)[1];
  };*/

  // increase the maximum display height of the image
  LightboxProvider.calculateImageDimensionLimits = function (dimensions) {
    return {
      'maxWidth': dimensions.windowWidth >= 768 ? // default
        dimensions.windowWidth - 92 :
        dimensions.windowWidth - 52,
      'maxHeight': 1600                           // custom
    };
  };

  // the modal height calculation has to be changed since our custom template is
  // taller than the default template
  LightboxProvider.calculateModalDimensions = function (dimensions) {
    var width = Math.max(400, dimensions.imageDisplayWidth + 32);

    if (width >= dimensions.windowWidth - 20 || dimensions.windowWidth < 768) {
      width = 'auto';
    }

    return {
      'width': width,                             // default
      'height': 'auto'                            // custom
    };
  };
	}
]);
