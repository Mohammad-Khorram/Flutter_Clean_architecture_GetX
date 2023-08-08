import 'package:crypto_currency/config/boiler/binding_boiler.dart';
import 'package:crypto_currency/core/network/dio.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    HomeBinding().dependencies();
    AuthBinding().dependencies();
    OtherBinding().dependencies();

    Get.lazyPut(DioCore.new, fenix: true);
  }
}
