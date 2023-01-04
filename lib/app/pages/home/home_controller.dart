import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstandard/app/data/repository/repository.dart';
import 'package:getxstandard/app/controllers/user_controller.dart';
import 'package:getxstandard/app/routes/app_routes.dart';

class HomeController extends GetxController {
  //Initialised properties  --------------------------------------
  final Repository repository;

  HomeController({required this.repository});

  //Static --------------------------------------------------------NONE

  //Public  -------------------------------------------------------NONE

  //Private -------------------------------------------------------
  var _isLoading = false.obs;
  var _searchMode = false.obs;
  final _userController = Get.find<UserController>();

  //Getters
  get isLoading => _isLoading.value;
  get searchMode => _searchMode.value;

  //Setters -------------------------------------------------------
  set searchMode(value) => _searchMode.value = value;

  onInit() {
    super.onInit();

    //Controller Initialization
  }

  //Public Methods ( Functions) -----------------------------------

  //Private Methods ( used internally ) ---------------------------

  //Public Methods  ( Routing : start with to) --------------------

  toDetails({Function? then}) {
    //may pass value to used in arguments
    Get.toNamed(Routes.DETAILS, arguments: null)!.then((value) {});
  }

  toOthers() {
    Get.toNamed(Routes.OTHERS);
  }
}
