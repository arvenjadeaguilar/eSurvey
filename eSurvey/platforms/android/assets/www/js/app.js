//Define an angular module for our app
var eSurveyApp = angular.module('eSurveyApp', ['ngMobile','ajoslin.mobile-navigate']);

//Define Routing for app
//Uri /AddNewOrder -> template AddOrder.html and Controller AddOrderController
//Uri /ShowOrders -> template ShowOrders.html and Controller AddOrderController
eSurveyApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/login', {
	templateUrl: 'templates/login.html',
	controller: 'loginController'
      }).
      when('/server', {
	templateUrl: 'templates/server.html',
	controller: 'serverController'
      }).
      when('/home', {
  templateUrl: 'templates/home.html',
  controller: 'homeController'
      }).
      when('/message', {
  templateUrl: 'templates/message.html',
  controller: 'messageController'
      }).
       when('/survey', {
  templateUrl: 'templates/survey.html',
  controller: 'surveyController'
      }).
       when('/survey1', {
  templateUrl: 'survey.html',
  controller: 'surveyController'
      }).
      otherwise({
	redirectTo: '/login'
      });
}]);


