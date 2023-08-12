import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mribmart/pages/caart/view/cart_view.dart';
import 'package:mribmart/pages/drawer/view/custom_drawer.dart';
import 'package:mribmart/pages/favourites/view/favourites_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../categories/view/categories.dart';
import '../../home/view/home.dart';

List<Widget> buildScreens() {
  return [
    const Categories(),
    FavouaritesScreen(),
    const Home(),
    Cart(),
    const CustomDrawer(),
  ];
}

List<PersistentBottomNavBarItem> navBarsItems(context) {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.settings),
      title: ("Categories"),
      activeColorPrimary: Theme.of(context).primaryColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.square_favorites_alt),
      title: ("favourite"),
      activeColorPrimary: Theme.of(context).primaryColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        CupertinoIcons.home,
        color: Colors.white,
      ),
      title: ("Home"),
      activeColorPrimary: Theme.of(context).primaryColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.cart),
      title: ("cart"),
      activeColorPrimary: Theme.of(context).primaryColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.add),
      title: ("Drawer"),
      activeColorPrimary: Theme.of(context).primaryColor,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}
