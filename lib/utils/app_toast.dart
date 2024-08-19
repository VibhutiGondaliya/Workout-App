import 'package:ft_task/package/config_packages.dart';
import 'package:ft_task/package/screen_packages.dart';

class AppToast {
  static void showAppToast(String? msg) {
    if (msg == null || msg.isEmpty) {
      return;
    }
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      textColor: AppColor.white,
      fontSize: 14,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void showErrorToast(String? msg) {
    if (msg == null || msg.isEmpty) {
      return;
    }
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      backgroundColor: AppColor.redColor,
      textColor: AppColor.white,
      fontSize: 14,
      gravity: ToastGravity.BOTTOM,
    );
  }
}
