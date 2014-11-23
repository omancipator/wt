angular.module("angularRails")
  .controller("HomeCtrl", ["$scope","$http",function($scope, $http){
    $scope.things = ["Angular", "Rails 4", "working"];
    
    $http.get('/weight_posts.json').success(function(data) {
      $scope.weight_posts = data;
    });
  }]);