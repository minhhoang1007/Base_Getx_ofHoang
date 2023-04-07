import 'package:base_getx_hoang/common/common.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginController();
  String language = "";
  bool isChangedLanguage = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void initData() {
    selectedLanguage();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void changeLanguage(context) {
    selectedLanguage();
    isChangedLanguage = true;
    if (isChangedLanguage) {
      update();
    }
  }

  void selectedLanguage() {
    switch (Common.language) {
      case "vi":
        language = "Vietnamese";

        break;
      case "en":
        language = "English";

        break;

      default:
    }
    update();
  }
}
