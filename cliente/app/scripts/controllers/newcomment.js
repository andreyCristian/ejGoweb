'use strict';

/**
 * @ngdoc function
 * @name clienteApp.controller:NewcommentCtrl
 * @description
 * # NewcommentCtrl
 * Controller of the clienteApp
 */
angular.module('clienteApp')
  .controller('NewcommentCtrl', function ($scope, $uibModalInstance, newComment) {

      $scope.newComment = newComment
      $scope.saveComment = function(){
          $uibModalInstance.close(newComment);
      }

      $scope.cancel = function(){
          $uibModalInstance.dismiss('cancel');
      }
  });
