import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_rent/app_style.dart';
import 'package:home_rent/size_config.dart';
import 'package:home_rent/zoom_home_page.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: ((details){
        if(details.delta.dx < -6){
          Provider.of<MenuProvider>(
              context,
              listen: false
          ).toggle();
        }

      }),
      child: Container(
        padding: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical!*1,
          left: 0,
          right: SizeConfig.screenWidth! /2,
          bottom: SizeConfig.blockSizeVertical!*1
        ),
        color: kBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildMenuItem(context,
                item: NavigationItem.home,
                text: 'Home', icon: 'assets/icon_home'),
            SizedBox(height: SizeConfig.blockSizeVertical!*2,),
            buildMenuItem(context,
                item: NavigationItem.profile,
                text: 'Profile', icon: 'assets/icon_profile'),
            SizedBox(height: SizeConfig.blockSizeVertical!*2,),
            buildMenuItem(context,
                item: NavigationItem.nearby,
                text: 'Nearby', icon: 'assets/icon_nearby'),
            SizedBox(height: SizeConfig.blockSizeVertical!*2,),
            Divider(
              color: kwhite.withOpacity(0.5),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical!*2,),
            buildMenuItem(context,
                item: NavigationItem.bookmark,
                text: 'Bookmark', icon: 'assets/icon_bookmark'),
            SizedBox(height: SizeConfig.blockSizeVertical!*2,),
            buildMenuItem(context,
                item: NavigationItem.notification,
                text: 'Notification', icon: 'assets/icon_notification_has_notif'),

            SizedBox(height: SizeConfig.blockSizeVertical!*2,),
            buildMenuItem(context,
                item: NavigationItem.message,
                text: 'Message', icon: 'assets/icon_message_has_message'),
            Divider(
              color: kwhite.withOpacity(0.5),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical!*2,),
            buildMenuItem(context,
                item: NavigationItem.setting,
                text: 'Setting', icon: 'assets/icon_setting'),
            SizedBox(height: SizeConfig.blockSizeVertical!*2,),
            buildMenuItem(context,
                item: NavigationItem.help,
                text: 'Help', icon: 'assets/icon_help'),

            SizedBox(height: SizeConfig.blockSizeVertical!*2,),
            buildMenuItem(context,
                item: NavigationItem.logout,
                text: 'LogOut', icon: 'assets/icon_logout'),

          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem(BuildContext context,
      {
        required NavigationItem item,
      required String text,
      required String icon}
    ){
  final provider= Provider.of<MenuProvider>(context);
  final currentItem = provider.navigationItem;
  final isSelected = item == currentItem;

  final color = isSelected ? kBlue : kwhite;
  final iconSvg = isSelected ? '${icon}_enable.svg':'${icon}_disable.svg';

  SizeConfig().init(context);

  return GestureDetector(
    onTap: () => selectItem(context,item),
    child: AnimatedContainer(
        duration: Duration(microseconds: 100,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(kBorderRadius20),
        bottomRight: Radius.circular(kBorderRadius20)),
        color: isSelected ? kwhite : null,
      ),
      height: SizeConfig.blockSizeVertical!*5,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockSizeHorizontal!*6),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            SvgPicture.asset(iconSvg),
            SizedBox(width: SizeConfig.blockSizeHorizontal!*4,),
            Text(text,style: kRalewayRegular.copyWith(
              color: color,
              fontSize: SizeConfig.blockSizeHorizontal!*4
            ),)
          ],
        ),
      ),
    ),
  );
}

void selectItem(BuildContext context, NavigationItem item){
  final provider = Provider.of<MenuProvider>(
      context,
      listen: false);
  provider.setNavigationItem(item);

}

enum NavigationItem{
  home,
  profile,
  nearby,
  bookmark,
  notification,
  navigation,
  message,
  setting,
  help,
  logout
}
