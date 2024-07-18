import 'package:dio/dio.dart';
import 'package:get/get.dart';

class BaseRepoImpl {
  Dio dio = Get.find(tag: "dio");
}