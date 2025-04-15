import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:subabase/core/app_colors.dart';
import 'package:subabase/views/favorite/ui/favorite_view.dart';
import 'package:subabase/views/home/ui/home_view.dart';
import 'package:subabase/views/nav_bar/logic/cubit/nav_bar_cubit.dart';
import 'package:subabase/views/profile/ui/profile_view.dart';
import 'package:subabase/views/store/ui/store_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainHomeView extends StatelessWidget {
  MainHomeView({super.key});
  final List views = [
    const HomeView(),
    const StoreView(),
    const FavoriteView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          // NavBarCubit cubit = BlocProvider.of<NavBarCubit>(context);
          NavBarCubit cubit = context.read<NavBarCubit>();
          return Scaffold(
            body: SafeArea(
              child: views[cubit.currentIndex],
            ),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(color: AppColors.kWitheColor),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                    onTabChange: (index) {
                      cubit.changeCurrentIndex(index);
                    },
                    selectedIndex: 2,
                    rippleColor: AppColors
                        .kPrimaryColor, // tab button ripple color when pressed
                    hoverColor:
                        AppColors.kPrimaryColor, // tab button hover color
                    haptic: true, // haptic feedback
                    // tabBorderRadius: 15,
                    // tabActiveBorder:
                    //     Border.all(color: Colors.black, width: 1), // tab button border
                    // tabBorder:
                    //     Border.all(color: Colors.grey, width: 1), // tab button border
                    // tabShadow: [
                    //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                    // ], // tab button shadow
                    // curve: Curves.easeOutExpo, // tab animation curves
                    duration: const Duration(
                        milliseconds: 400), // tab animation duration
                    gap: 8, // the tab button gap between icon and text
                    color: AppColors.kGreyColor, // unselected icon color
                    activeColor:
                        AppColors.kWitheColor, // selected icon and text color
                    iconSize: 24, // tab button icon size
                    tabBackgroundColor: AppColors
                        .kPrimaryColor, // selected tab background color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12), // navigation bar padding
                    tabs: [
                      GButton(
                        icon: Icons.home,
                        text: 'Home'.tr,
                      ),
                      GButton(
                        icon: Icons.store,
                        text: 'Store'.tr,
                      ),
                      GButton(
                        icon: Icons.favorite,
                        text: 'Favorite'.tr,
                      ),
                      const GButton(
                        icon: Icons.person,
                        text: 'Profile',
                      )
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
