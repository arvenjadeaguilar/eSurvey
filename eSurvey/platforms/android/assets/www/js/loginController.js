
eSurveyApp.controller('loginController',function($scope,$routeParams,$rootScope,$http,$location){
	
	$scope.address = "http://" + $rootScope.serverAddress+'/eSurvey/mobile'; 
	console.log($scope.address);
	
	$scope.login = function(){

		$http.post($scope.address + "/login",
			{
				username:$scope.username,
				password:$scope.password

			}).success(function(data){
				if(data!=0){
				$location.path('/home');
				}
				else{
				$location.path('/login');
				$scope.message = "fuck you";
				}
		});
	}




});

