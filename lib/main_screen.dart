import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/core/utils/app_colors.dart';
import 'package:movie_app/core/utils/app_images.dart';
import 'package:movie_app/feature/home/view/home_screen.dart';
import 'package:movie_app/feature/search/view/search_screen.dart';
import 'package:movie_app/feature/watchlist/view/watchlist_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static String routeName = "MainScreen";

  @override
  State<MainScreen> createState() => _AppSectionScreenState();

}

class _AppSectionScreenState extends State<MainScreen> {
  List<Widget> screens = [HomeScreen(), SearchScreen(), WatchListScreen()];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.blueColor,
        unselectedItemColor: AppColors.unselectedItemColor,
        backgroundColor: AppColors.backgroundColor,
        // fixedColor: Color(0xff242A32),
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (newIndex) {
          setState(() {
            _index = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.homeIcon),
            activeIcon: SvgPicture.asset(
              AppImages.homeIcon,
              color: AppColors.blueColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.searchIcon),
            activeIcon: SvgPicture.asset(
              AppImages.searchIcon,
          // ignore: deprecated_member_use
              color: AppColors.blueColor,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.watchlistIcon),
            activeIcon: SvgPicture.asset(
              AppImages.watchlistIcon,
              // ignore: deprecated_member_use
              color: AppColors.blueColor,
            ),
            label: "Watchlist",
          ),
        ],
      ),
    );
  }
}
