import 'package:social_network/domain/env/model/app_constants.dart';
import 'package:social_network/domain/env/product.dart';
import 'package:social_network/main.dart';
import 'package:get/get.dart';

Future<void> main() async {
  Get.put(AppConstants.fromJson(configProductEnv));
  await mainApp();
}
