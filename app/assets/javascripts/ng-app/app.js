angular.module("angularRails", [
  "ui.router",
  "templates"
]).config(["$stateProvider","$urlRouterProvider",function($stateProvider, $urlRouterProvider){
  
  $urlRouterProvider
  .otherwise('/')
  
  
  $stateProvider
  .state("home",{
    url: "/",
//     template: "<h1>booya</h1>"
    templateUrl: "home.html",
    controller: "HomeCtrl"
  });

}]);