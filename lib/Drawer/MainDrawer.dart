import 'package:ecommerce_app/Drawer/DrawerItem.dart';
import 'package:ecommerce_app/NavigationMenu.dart';
import 'package:ecommerce_app/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5956E),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              GestureDetector(
                onTap: () {
                  ZoomDrawer.of(context)!.toggle();
                  Get.to(ProfileScreen());
                },
                child: DrawerItem(
                    label: "Profile",
                    verticalMargin: 10,
                    icon: IconButton(
                      icon: SvgPicture.asset("assets/icons/Profile_white.svg"),
                      onPressed: () {},
                    )),
              ),
              GestureDetector(
                onTap: () {},
                child: DrawerItem(
                    label: "My Orders",
                    verticalMargin: 10,
                    icon: IconButton(
                      icon: SvgPicture.asset("assets/icons/Bag_white.svg"),
                      onPressed: () {},
                    )),
              ),
              GestureDetector(
                onTap: () {},
                child: DrawerItem(
                    label: "Delivery",
                    verticalMargin: 10,
                    icon: IconButton(
                      icon: SvgPicture.asset("assets/icons/Buy_white.svg"),
                      onPressed: () {},
                    )),
              ),
              GestureDetector(
                onTap: () {},
                child: DrawerItem(
                    label: "Favorites",
                    verticalMargin: 10,
                    icon: IconButton(
                      icon: SvgPicture.asset("assets/icons/Heart_white.svg"),
                      onPressed: () {},
                    )),
              ),
              GestureDetector(
                onTap: () {},
                child: DrawerItem(
                    label: "Settings",
                    verticalMargin: 10,
                    icon: IconButton(
                      icon: SvgPicture.asset("assets/icons/Setting_white.svg"),
                      onPressed: () {},
                    )),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: DrawerItem(
                    label: "LogOut",
                    verticalMargin: 100,
                    icon: IconButton(
                      icon: SvgPicture.asset("assets/icons/Logout_white.svg"),
                      onPressed: () {},
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
