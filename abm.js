var abm = angular.module('abm', ['ngRoute']);

abm.config(['$routeProvider', function ($routeProvider) {
	$routeProvider.
    	when('/main', { templateUrl: 'Views/abm-main.html', controller: 'abmMainController' }).
    	when('/abm-login', { templateUrl: 'Views/abm-login.html', controller: 'abmMainController' }).
    	when('/abm-catalog/:product', { templateUrl: 'Views/abm-catalog.html', controller: 'abmCatalogController' }).
    	when('/abm-user', { templateUrl: 'Views/abm-user.html', controller: 'abmUserController' }).
    	otherwise({ redirectTo: '/main' });

	/*LightboxProvider.templateUrl = '../Catalog/Views/Templates/lightbox2.html';
	LightboxProvider.fullScreenMode = true;*/
}]);
