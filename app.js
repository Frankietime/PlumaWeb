// Define all modules
angular.module('abm', []);


var app = angular.module('app', [/*'abm',*/ 'ngRoute', 'bootstrapLightbox', 'ui.bootstrap', 'angular-loading-bar', 'ngAnimate']);

app.config(['$routeProvider', 'LightboxProvider', function ($routeProvider, LightboxProvider) {
	$routeProvider.
    when('/home', { templateUrl: '/home.html', controller: 'homeController' }).
    when('/autor', { templateUrl: '/autor.html', controller: 'homeController' }).
		when('/contacto', { templateUrl: '/contacto.html', controller: 'homeController' }).
		when('/catalog/', { templateUrl: '/Catalog/Views/catalog.html', controller: 'catalogController', reloadOnSearch: false }).
		when('/catalog/:product', { templateUrl: '/Catalog/Views/catalog.html', controller: 'catalogController', reloadOnSearch: false }).
		when('/catalog-description/:description', { templateUrl: '/Catalog/Views/Templates/catalog-description.html', controller: 'catalogDescriptionController', reloadOnSearch: false }).
        when('/abm', { templateUrl: '/ABM/index.html', action: 'mainController', reloadOnSearch: false }).
        when('/abm/catalog/:product', { templateUrl: 'ABM/Catalog/Views/catalog.html', controller: 'abm.catalogController', reloadOnSearch: false }).
        when('/abm/main', { templateUrl: 'ABM/Views/abm-main.html', controller: 'abmMainController' }).
        when('/abm/login', { templateUrl: 'ABM/Views/abm-login.html', controller: 'abmMainController' }).
        when('/abm/catalog/:product', { templateUrl: 'ABM/Views/abm-catalog.html', controller: 'abmCatalogController' }).
        when('/abm/user', { templateUrl: 'ABM/Views/abm-user.html', controller: 'abmUserController' }).
        otherwise({ redirectTo: '/home' });

    //otherwise({ redirectTo: '/home' });

        // lightbox photo gallery config

        LightboxProvider.templateUrl = '/Catalog/Views/Templates/lightbox2.html';
        LightboxProvider.fullScreenMode = true;
        LightboxProvider.getImageUrl = function (image) {
            return image.picMax;
        };
        // increase the maximum display height of the image
        LightboxProvider.calculateImageDimensionLimits = function (dimensions) {
            return {
              'maxWidth': dimensions.windowWidth >= 768 ? // default
                dimensions.windowWidth - 592 :
                dimensions.windowWidth - 552,
              'maxHeight': 1600                           // custom
            };
        };
        // the modal height calculation has to be changed since our custom template is
        // taller than the default template
        LightboxProvider.calculateModalDimensions = function (dimensions) {
            var width = Math.max(100, dimensions.imageDisplayWidth + 32);
            if (width >= dimensions.windowWidth - 20 || dimensions.windowWidth < 768) {
                width = 'auto';
            }
            return {
              'width': width,                             // default
              'height': 'auto'                            // custom
            };
        };

  /*angular.module('abm', ['ngRoute']).
    config(['$routeProvider', function ($routeProvider) {
      $routeProvider.
          when('/main', { templateUrl: 'Views/abm-main.html', controller: 'abmMainController' }).
          when('/abm-login', { templateUrl: 'Views/abm-login.html', controller: 'abmMainController' }).
          when('/abm-catalog/:product', { templateUrl: 'Views/abm-catalog.html', controller: 'abmCatalogController' }).
          when('/abm-user', { templateUrl: 'Views/abm-user.html', controller: 'abmUserController' }).
          otherwise({ redirectTo: '/main' });
      }
    ]);*/
  }
]);
