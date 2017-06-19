'use strict';

/**
* @ngdoc function
* @name clienteApp.controller:MainCtrl
* @description
* # MainCtrl
* Controller of the clienteApp
*/
angular.module('clienteApp')
.controller('MainCtrl', function ($scope, $uibModal, crud) {
    var self = this;
    self.arrayComments = {};
    self.arrayGallery = {};
    self.arrayTecs = {};

    crud.get("galeria", "").then(function(response){
        self.arrayGallery = response.data;
    })

    crud.get("comentario", "").then(function(response){
        self.arrayComments = response.data;
    });

    crud.get("tecnica", "").then(function(response){
        self.arrayTecs = response.data;
    });

    $scope.showModal = function(){
        $scope.newComment = {};
        var modalInstance = $uibModal.open({
            controller: 'NewcommentCtrl',
            templateUrl: 'views/newcomment.html',
            resolve: {
                newComment: function(){
                    return $scope.newComment;
                }
            }
        });
        modalInstance.result.then(function(selectedItem){
            $scope.CurrentDate = new Date().toString();
            $scope.newComment.Fecha = "" + $scope.CurrentDate;
            if($scope.newComment.Asunto != null || $scope.newComment.Cuerpo != null){
                crud.post("comentario", $scope.newComment).then(function(response){
                    swal(
                        'Good Job!',
                        'Gracias por comentar!',
                        'success'
                    );
                    crud.get("comentario", "").then(function(response){
                        self.arrayComments = response.data;
                    });
                });
            } else {
                swal(
                    'Oops...',
                    'Datos incorrectos!',
                    'error'
                );
            }
        });
    }
});
