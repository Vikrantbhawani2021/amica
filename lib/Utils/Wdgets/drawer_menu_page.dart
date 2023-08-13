


import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';




import '../BottomNavigation/controller.dart';
import '../Constants/constants_colors.dart';
import '../Constants/routes.dart';



class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(-0.7, 12),
          end: const Alignment(1, -2),
          stops: const [0.2, 0.5, 1],
          colors: [
            Colors.green,
            Colors.teal,
            ColorConst.primaryColor,
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      width: Get.width / 1.6,
      child: GetBuilder<BottomNavigationController>(
        init: BottomNavigationController(),
        initState: (_) {},
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                InkWell(
                  onTap: () {
                    ZoomDrawer.of(context)!.close();
                    // Get.to(() => const ProfilePage());
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,

                      ),
                      const Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 14,
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                   "Hello",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                drawerItems(
                  icon: Icons.home_rounded,
                  title: "Home",
                  onTap: () {
                    ZoomDrawer.of(context)!.close();
                    controller.tabIndex.value = 0;
                  },
                ),
                drawerItems(
                  icon: Ionicons.bookmark,
                  title: "My Bookmarks",
                  onTap: () {
                    ZoomDrawer.of(context)!.close();
                    Get.toNamed(RoutesName.favoutiesPage);
                  },
                ),
                drawerItems(
                  icon: Icons.quiz,
                  title: "Previous Years Papers",
                  onTap: () {
                    ZoomDrawer.of(context)!.close();
                    // Get.to(() => const PreviousPapersPage());
                  },
                ),
                drawerItems(
                  icon: Icons.book_rounded,
                  title: "My Content",
                  hight: 30,
                  onTap: () {
                    ZoomDrawer.of(context)!.close();
                    Get.toNamed(RoutesName.allCoursesPage);
                  },
                ),
                drawerItems(
                  icon: Icons.tv,
                  title: "Live Class",
                  onTap: () {
                    ZoomDrawer.of(context)!.close();
                    // Get.to(
                    //   () => const MaeetingsPage(
                    //     isBack: true,
                    //   ),
                  //  );
                  },
                ),
                drawerItems(
                  icon: Icons.lightbulb_outline_rounded,
                  title: "Quizzes",
                  onTap: () {
                    ZoomDrawer.of(context)!.close();
                    controller.tabIndex.value = 3;
                  },
                ),
                drawerItems(
                  icon: Icons.notifications,
                  title: "Job Alerts",
                  onTap: () {
                    ZoomDrawer.of(context)!.close();
                    controller.tabIndex.value = 4;
                  },
                ),
                drawerItems(
                  icon: Ionicons.trophy,
                  title: "Subscription",
                  onTap: () {
                    ZoomDrawer.of(context)!.close();
                    Get.toNamed(RoutesName.subscriptionPage);
                  },
                ),
                drawerItems(
                  icon: Icons.logout_rounded,
                  title: "Logout",
                  onTap: () async {
                    // box.remove(RoutesName.token);
                    // box.remove(RoutesName.id);
                    // box.erase();
                    // await FirebaseAuth.instance.signOut();
                    // // await GoogleSignIn().signOut();
                    // Get.offAndToNamed(RoutesName.loginInPageEmail);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget drawerItems({
    required String title,
    void Function()? onTap,
    IconData? icon,
    double? hight,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: InkWell(
            onTap: onTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 22,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.white,
          height: 1,
        ),
      ],
    );
  }
}
