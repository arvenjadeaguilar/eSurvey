
eSurveyApp.controller('loginController',function($scope,$routeParams,$rootScope,$http,$location){
	
	
	$scope.login = function(){

		http.post('http://'+ $rootScope.serverAddress + "/mobile/login",
			{
				username:$scope.username,
				password:$scope.password

			}).success(function(data){


		});
	}




});

