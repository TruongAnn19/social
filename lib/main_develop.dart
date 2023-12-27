import 'package:social_network/domain/env/develop.dart';
import 'package:social_network/domain/env/model/app_constants.dart';
import 'package:social_network/main.dart';
import 'package:get/get.dart';

Future<void> main() async {
  Get.put(AppConstants.fromJson(configDevEnv));
  await mainApp();
}
