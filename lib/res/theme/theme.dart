import 'package:ft_task/package/config_packages.dart';
import 'package:ft_task/package/screen_packages.dart';

abstract class AppTheme {
  const AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    focusColor: AppColor.grey100,
    textSelectionTheme: TextSelectionThemeData(selectionColor: AppColor.black.withOpacity(0.4), cursorColor: AppColor.black.withOpacity(0.4), selectionHandleColor: AppColor.black),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.white,
    brightness: Brightness.light,
    primaryColor: AppColor.black,
    fontFamily: StringConst.fontFamily,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.primaryBlackColor,
      onPrimary: AppColor.bodyLightColor,
      secondary: AppColor.white,
      onSecondary: AppColor.darkGreyColor,
      error: AppColor.grey500,
      onError: AppColor.grey400,
      background: AppColor.appBarBlackColor,
      onBackground: AppColor.black,
      surface: AppColor.white,
      onSurface: AppColor.greyF0Color,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
      backgroundColor: AppColor.white,
      selectedItemColor: AppColor.primaryBlackColor,
      unselectedItemColor: AppColor.greyB9Color,
    ),
    tabBarTheme: TabBarTheme(
        tabAlignment: TabAlignment.start,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: AppColor.white,
        unselectedLabelColor: AppColor.greyColor,
        labelStyle: TextStyle().normal15w500,
        unselectedLabelStyle: TextStyle().normal15w500,
        indicator: UnderlineTabIndicator(
          // color for indicator (underline)
          borderSide: BorderSide(
            color: Colors.white,
            width: 4,
          ),
        ),
        dividerColor: Colors.transparent),
    appBarTheme: AppBarTheme(
      foregroundColor: AppColor.black,
      centerTitle: true,
      titleSpacing: 0,
      elevation: 0,
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, fontFamily: StringConst.fontFamily, color: AppColor.black),
      backgroundColor: AppColor.white,
      iconTheme: IconThemeData(color: AppColor.black),
      actionsIconTheme: IconThemeData(color: AppColor.black),
      surfaceTintColor: AppColor.gray200,
      //systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      elevation: 4,
      clipBehavior: Clip.hardEdge,
      modalElevation: 8,
      backgroundColor: AppColor.white,
      modalBackgroundColor: AppColor.white,
    ),
    dividerColor: AppColor.grey200,
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AppColor.black;
        } else if (states.contains(MaterialState.pressed)) {
          return AppColor.black;
        } else if (states.contains(MaterialState.focused)) {
          return AppColor.black;
        } else if (states.contains(MaterialState.hovered)) {
          return AppColor.black;
        } else {
          return AppColor.white;
        }
      }),
    ),
    indicatorColor: AppColor.grey100,
    hintColor: AppColor.grey500,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: AppColor.black, foregroundColor: AppColor.white),
  );

  static final ThemeData darkTheme = ThemeData(
    focusColor: AppColor.grey600,
    primaryColor: AppColor.white,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: AppColor.white.withOpacity(0.4),
      cursorColor: AppColor.white.withOpacity(0.4),
      selectionHandleColor: AppColor.white,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.black,
    brightness: Brightness.dark,
    fontFamily: StringConst.fontFamily,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColor.appBarBlackColor,
      onPrimary: AppColor.primaryBlackColor,
      secondary: AppColor.lightBlackColor,
      onSecondary: AppColor.greyB9Color,
      error: AppColor.grey400,
      onError: AppColor.grey500,
      background: AppColor.lightBlackColor,
      onBackground: Colors.transparent,
      surface: AppColor.greyB9Color,
      onSurface: AppColor.appBarBlackColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
      backgroundColor: AppColor.appBarBlackColor,
      selectedItemColor: AppColor.white,
      unselectedItemColor: AppColor.darkGreyColor,
    ),
    tabBarTheme: TabBarTheme(
        tabAlignment: TabAlignment.start,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: AppColor.white,
        unselectedLabelColor: AppColor.greyColor,
        labelStyle: TextStyle().normal15w500,
        unselectedLabelStyle: TextStyle().normal15w500,
        indicator: UnderlineTabIndicator(
          // color for indicator (underline)
          borderSide: BorderSide(color: Colors.white, width: 4),
        ),
        dividerColor: Colors.transparent),
    appBarTheme: AppBarTheme(
      foregroundColor: AppColor.white,
      centerTitle: true,
      titleSpacing: 0,
      elevation: 0,
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, fontFamily: StringConst.fontFamily),
      backgroundColor: AppColor.black,
      iconTheme: IconThemeData(color: AppColor.white),
      actionsIconTheme: IconThemeData(color: AppColor.white),
      surfaceTintColor: AppColor.greyB9Color,
      //systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      elevation: 4,
      clipBehavior: Clip.hardEdge,
      modalElevation: 8,
      backgroundColor: AppColor.black,
      modalBackgroundColor: AppColor.white,
    ),
    dividerColor: AppColor.grey200,
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AppColor.white;
        } else if (states.contains(MaterialState.pressed)) {
          return AppColor.white;
        } else if (states.contains(MaterialState.focused)) {
          return AppColor.white;
        } else if (states.contains(MaterialState.hovered)) {
          return AppColor.white;
        } else {
          return AppColor.white;
        }
      }),
    ),
    indicatorColor: AppColor.black,
    hintColor: AppColor.grey300,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: AppColor.white, foregroundColor: AppColor.black),
  );
}
