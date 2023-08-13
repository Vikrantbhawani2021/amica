import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../../Utils/Constants/constants_colors.dart';

class HomePageNewest extends StatefulWidget {
  const HomePageNewest({Key? key}) : super(key: key);

  @override
  State<HomePageNewest> createState() => _HomePageNewestState();
}

class _HomePageNewestState extends State<HomePageNewest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
            slivers:[
              SliverAppBar(
                backgroundColor: ColorConst.primaryColor,
                pinned: true,
                collapsedHeight: 68,
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        ZoomDrawer.of(context)!.toggle();
                      },
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        // final tabController =
                        // Get.find<BottomNavigationController>();
                        // tabController.changeTabIndex(1);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: const [
                                Text(
                                  'AMICA LIB',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                        Row(
                          children: [
                            Text(
                              "FFFF",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.expand_more_rounded,
                              color: Colors.white,
                            ),
                          ],
                        )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                actions: [
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: 10,
                  //     top: 20,
                  //   ),
                  //   child: InkWell(
                  //     onTap: () {
                  //       Get.toNamed(RoutesName.coursesCheckOutPage);
                  //     },
                  //     child: Container(
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: 10, vertical: 5),
                  //       decoration: BoxDecoration(
                  //         color: Colors.white10,
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //       child: Badge(
                  //         badgeColor: Colors.white,
                  //         badgeContent: Text(
                  //           '${cartCount.value}',
                  //           style: TextStyle(
                  //             color: ColorConst.buttonColor,
                  //             fontSize: 10,
                  //           ),
                  //         ),
                  //         child: const Icon(
                  //           Icons.shopping_cart,
                  //           size: 20,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 5, top: 20, right: 5),
                    child: GestureDetector(
                      onTap: () {
                        // Get.toNamed(RoutesName.notificationPage);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(Icons.notifications, size: 20),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Get.to(() => const ProfilePage());
                    },
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 5, top: 20, right: 10),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage(
                              "https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),



            ]
        ),
      ),
    );
  }
}
