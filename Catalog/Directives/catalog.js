var app = angular.module('app'); 

app.directive('catalog', [ '$compile', '$q', '$routeParams', function ($compile, $q, $routeParams) {
	return {
		restrict: 'E',
		template: 	'<div class="nav_container horizontal" style="display: inline">' +
                    '<div class="collapse navbar-collapse" id="collapse-0">' +
                    '<ul class="nav navbar-nav catalog-filter"><li class="dropdown">' + 
					'<a class="dropdown-toggle" data-toggle="dropdown" href="">Seleccionar producto<b class="caret"></b></a>'+
                    '<ul class="dropdown-menu">' +
                    '<li ng-repeat="item in items" value="filtrar-por-{{item | lowercase}}"><a href="#/catalog/{{item | lowercase}}">{{item}}</a></li>' +
                    '</ul></li></ul>' + 
                    '<br /><br /><br /><br /></div></div>' +
                    '<div id="current-catalog"></div>',
        link: function (scope, attrs, element) {
            var div = angular.element.find('#current-catalog');
            scope.$on('$routeChangeSuccess', function (current, previous) {
                });
            }
		}
    }
]);