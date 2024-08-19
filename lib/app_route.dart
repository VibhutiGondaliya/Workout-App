import 'package:ft_task/module/home/assessment_detail/assessment_detail_screen.dart';
import 'package:ft_task/module/home/home_screen.dart';
import 'package:ft_task/package/config_packages.dart';
import 'package:ft_task/package/screen_packages.dart';

class AppRouter {
  static const splash = '/splash';
  static const home = '/home';
  static const assessmentDetail = '/assessmentDetail';

  static List<GetPage> getPages = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: home, page: () =>  HomeScreen()),
    GetPage(name: assessmentDetail, page: () =>  AssessmentDetailScreen()),
  ];
}
