var app = angular.module('app');

app.factory('treeService', [ function () {
	var service = {};
	service.getMenuView = function (object, branchTemplateFn, leaveTemplateFn) {
		var view = '';
		if (Object.keys(object).length > 1) {
			
		}
		for ( var i in object ) {
			if (Object.keys(object[i]).length > 1) {
				branchTemplateFn(object);
				this.getMenuView(object[i]);
			} else {
				return object;
			}
		}
		return object;
	};
	service.getTree = function (object) {
		if (Object.keys(object).length > 1) {
			object.status = 'branch';
		}
		for ( var i in object ) {
			if (Object.keys(object[i]).length > 1) {
				object.status = 'branch';
				this.getTree(object[i]);
			} else {
				return object;
			}
		}
		return object;
	};
	return service;
}]);