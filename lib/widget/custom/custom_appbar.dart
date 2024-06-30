import 'package:auto_size_text/auto_size_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/about_us/about_us_page.dart';
import 'package:gastronomy/page/culture/culture_page.dart';
import 'package:gastronomy/page/gastronomy/gastronomy_page.dart';
import 'package:gastronomy/page/home/homepage.dart';
import 'package:gastronomy/page/profile/profile_page.dart';
import 'package:gastronomy/page/restaurant/restaurantpage.dart';
import 'package:gastronomy/page/tourist_village/tourist_village_page.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
  });
  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
  @override
  Size get preferredSize => Size(200, kToolbarHeight);
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    var c = Get.put(GlobalController());
    final currentWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
          alignment: Alignment.center,
          color: Colors.transparent,
          // we can set width here with conditions
          width: Get.width,
          height: kToolbarHeight,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  height: 60,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    // borderRadius: BorderRadius.only(
                    //   bottomRight: Radius.circular(40),
                    //   bottomLeft: Radius.circular(40),
                    // ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      currentWidth < 600
                          ? Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      c.selectedIndex.value = 0;
                                      Get.to(const HomePage());
                                    },
                                    child: SizedBox(
                                      width: 110,
                                      child: OnHoverButton(
                                        child: const Text(
                                          "Gastronomi Lombok",
                                          textAlign: TextAlign.center,
                                        ).orelega20s().white(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      c.selectedIndex.value = 0;
                                      Get.to(const HomePage());
                                    },
                                    child: SizedBox(
                                      width: 110,
                                      child: OnHoverButton(
                                        child: const Text(
                                          "Gastronomi Lombok",
                                          textAlign: TextAlign.center,
                                        ).orelega20s().white(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      currentWidth < 800
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                DropdownButtonHideUnderline(
                                  child: DropdownButton2(
                                    customButton: const Icon(
                                      Icons.list,
                                      size: 46,
                                      color: Colors.white,
                                    ),
                                    items: [
                                      ...MenuItems.firstItems.map(
                                        (item) => DropdownMenuItem<MenuItem>(
                                          value: item,
                                          child: MenuItems.buildItem(item),
                                        ),
                                      ),
                                      const DropdownMenuItem<Divider>(
                                          enabled: false, child: Divider()),
                                      ...MenuItems.secondItems.map(
                                        (item) => DropdownMenuItem<MenuItem>(
                                          value: item,
                                          child: MenuItems.buildItem(item),
                                        ),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      MenuItems.onChanged(
                                          context, value as MenuItem);
                                    },
                                    dropdownStyleData: DropdownStyleData(
                                      width: 160,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.black,
                                      ),
                                      elevation: 8,
                                      offset: const Offset(0, 8),
                                    ),
                                    menuItemStyleData: MenuItemStyleData(
                                      customHeights: [
                                        ...List<double>.filled(
                                            MenuItems.firstItems.length, 48),
                                        8,
                                        ...List<double>.filled(
                                            MenuItems.secondItems.length, 48),
                                      ],
                                      padding: const EdgeInsets.only(
                                          left: 16, right: 16),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Expanded(
                              flex: 4,
                              child: ListView.builder(
                                  itemCount: c.tapbar.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          c.selectedIndex.value = index;
                                        });
                                        // ignore: avoid_print
                                        print(c.selectedIndex.value.toString());
                                        // ignore: avo  id_print
                                        // print(c.tapbar[index]);
                                        switch (index) {
                                          case 0:
                                            {
                                              Get.to(const HomePage());
                                            }
                                            break;
                                          case 1:
                                            {
                                              Get.to(const GastronomyPage());
                                            }
                                            break;
                                          case 2:
                                            {
                                              Get.to(const RestaurantPage());
                                            }
                                            break;

                                          case 3:
                                            {
                                              Get.to(const CulturePage());
                                            }
                                            break;
                                          case 4:
                                            {
                                              Get.to(
                                                  const TouristVillagePage());
                                            }
                                            break;
                                          case 5:
                                            {
                                              Get.to(const AboutUsPage());
                                            }
                                            break;
                                          default:
                                            {
                                              //statements;
                                            }
                                            break;
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 3,
                                                    color:
                                                        c.selectedIndex.value ==
                                                                index
                                                            ? OPrimaryColor
                                                            : Colors.black))),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 50),
                                        child: Center(
                                            child: OnHoverButton(
                                          child: AutoSizeText(
                                            c.tapbar[index],
                                            style: GoogleFonts.nunito(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white),
                                            maxLines: 1,
                                          ),
                                        )
                                            // Text(gstate.tapbar[index]).nunito16m().white(),
                                            ),
                                      ),
                                    );
                                  }),
                            ),
                      currentWidth > 800
                          ? OnHoverButton(
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(const ProfilePage());
                                },
                                child: Container(
                                  width: 67.66,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(45)),
                                  padding: EdgeInsets.only(left: 4, right: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.orange,
                                                Colors.orangeAccent,
                                                Colors.red,
                                                Colors.redAccent
                                                //add more colors for gradient
                                              ],
                                              begin: Alignment
                                                  .topLeft, //begin of the gradient color
                                              end: Alignment
                                                  .bottomRight, //end of the gradient color
                                              stops: [
                                                0,
                                                0.2,
                                                0.5,
                                                0.8
                                              ] //stops for individual color
                                              //set the stops number equal to numbers of color
                                              ),
                                        ),
                                        // child: ClipRRect(
                                        //   borderRadius: BorderRadius.circular(8.0),
                                        //   child: Image.asset(
                                        //     "assets/images/ic_profile.jpg",
                                        //     width: 200,
                                        //     height: 200,
                                        //     fit: BoxFit.cover,
                                        //   ),
                                        // )
                                        // Image.asset("assets/images/ic_profile.jpg"),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Icon(Icons.menu)
                                      // const Text(
                                      //   "Ariel",
                                      //   textAlign: TextAlign.center,
                                      // ).nunito16s().white(),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
              ),
            ],
          )
          // : Container()
          ),
    );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [
    home,
    gastronomy,
    restaurant,
    culture,
    village,
    about
  ];
  static const List<MenuItem> secondItems = [profile];

  static const home = MenuItem(text: 'Home', icon: Icons.cottage_sharp);
  static const gastronomy =
      MenuItem(text: 'Gastronomy', icon: Icons.local_restaurant_outlined);
  static const restaurant =
      MenuItem(text: 'Restaurant', icon: Icons.soup_kitchen);
  static const culture =
      MenuItem(text: 'Culture', icon: Icons.snowshoeing_rounded);
  static const village =
      MenuItem(text: 'Village', icon: Icons.bungalow_rounded);
  static const about =
      MenuItem(text: 'About', icon: Icons.announcement_outlined);
  static const profile = MenuItem(text: 'Profile', icon: Icons.person);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.white, size: 22),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
        Get.to(const HomePage());
        //Do something
        break;
      case MenuItems.gastronomy:
        //Do something
        Get.to(const GastronomyPage());
        break;
      case MenuItems.restaurant:
        Get.to(const RestaurantPage());
        //Do something
        break;
      case MenuItems.culture:
        Get.to(const CulturePage());
        //Do something
        break;
      case MenuItems.village:
        //Do something
        break;
      case MenuItems.about:
        //Do something
        break;
      case MenuItems.profile:
        //Do something
        break;
    }
  }
}
