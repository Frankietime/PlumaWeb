var app = angular.module('app'); 

app.directive('photogallery', [ '$compile', '$q', '$filter', 'treeService', 'Lightbox',
    function ($compile, $q, $filter, treeService, Lightbox) {
	return {
		restrict: 'E',
        templateUrl:  'Catalog/Views/Templates/filterTemplate.html',
        link: function (scope, attrs, element) {
            
            // setea las opciones de filtro
            var loadPhotos = function () {
                
                var gallery = angular.element.find('#gallery-container');
                $(gallery).find('#gallery').remove();
                $(gallery).append('<div id="gallery" ng-show="{{singleView}}"max-width="70%" max-height="70%"></ul>');
                var photos = $(gallery).find('#gallery');
                angular.forEach (scope.photos, function (photo, iterator) {
                    $(photos).append( 
                            '<a ng-click="openLightboxModal(' + iterator + ',' + scope.photos.indexOf(photo) + ')">' +
                            '<img  class="img-thumbnail" width="300px" height="300px" src="' + photo.picMin + '">' +
                            '</a>'                                
                    );
                });   
                    $compile($(photos).contents())(scope);          
            }
            // renderea la galería cada vez que se aplica un filtro (template en Gamma Ln 409)
            scope.$on('loadPhotos', loadPhotos);
            
            scope.setFilter = function (key, value) {
                var keyValue = [{
                    key: key,
                    value: value
                }];
                var found = $filter('filter')(scope.filterArray, {key: key, value: value});
                if(found.length == 0) {
                    scope.filterArray.push({key, value});
                    scope.$emit('filter-update');              
                    //loadPhotos();
                }
                else {
                    for(var i in scope.filterArray) {
                        if(scope.filterArray[i].value == value)
                            var deleteThisIndex = i;
                    }                    
                    scope.filterArray.splice(deleteThisIndex, 1);
                    scope.$emit('filter-update');        
                }                
            };
            scope.toggle = function (key, value) {
                var id = '#' + key + value
                id = $(id);
                var newValue = id.attr('enabled');
                if(id.attr('enabled') == 'true') {                                       
                    $(id).find('a').css('background-color', '#AFAFCF');
                    id.attr('enabled', 'false'); 
                }
                else {
                    $(id).find('a').css('background-color', 'white');
                    id.attr('enabled', 'true');
                }                
            };
        } 
    };
}]);