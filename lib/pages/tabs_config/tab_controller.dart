import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopper/pages/main_pages/home/views/home_screen.dart';
import 'package:flutter_shopper/pages/tabs_config/route/router.gr.dart';
import 'package:flutter_shopper/utils/colors.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({
    Key? key,
  }) : super(key: key);

  @override
  TabScreenState createState() => TabScreenState();
}

class RouteDestination {
  final PageRouteInfo route;
  final IconData icon;

  const RouteDestination({
    required this.route,
    required this.icon,
  });
}

class TabScreenState extends State<TabScreen> with TickerProviderStateMixin {
  final destinations = const [
    RouteDestination(
      route: HomeTab(),
      icon: Icons.home_rounded,
    ),
    RouteDestination(
      route: SearchTap(),
      icon: Icons.local_offer_rounded,
    ),
    RouteDestination(
      route: ChartTab(),
      icon: Icons.history_rounded,
    ),
    RouteDestination(
      route: MoreTab(),
      icon: Icons.notifications,
    ),
    RouteDestination(
      route: ProfileTab(),
      icon: Icons.person_rounded,
    ),
  ];

  void toggleSettingsTap() => setState(() {
        _showSettingsTap = !_showSettingsTap;
      });

  bool _showSettingsTap = true;

  @override
  Widget build(context) {
    // builder will rebuild everytime this router's stack
    // updates
    // we need it to indicate which NavigationRailDestination is active
    return kIsWeb
        ? AutoRouter(builder: (context, child) {
            // we check for active route index by using
            // router.isRouteActive method
            var activeIndex = destinations.indexWhere(
              (d) => context.router.isRouteActive(d.route.routeName),
            );
            // there might be no active route until router is mounted
            // so we play safe
            if (activeIndex == -1) {
              activeIndex = 0;
            }
            return Row(
              children: [
                NavigationRail(
                  destinations: destinations
                      .map((item) => NavigationRailDestination(
                            icon: Icon(item.icon),
                            label: Text(''),
                          ))
                      .toList(),
                  selectedIndex: activeIndex,
                  onDestinationSelected: (index) {
                    // use navigate instead of push so you won't have
                    // many useless route stacks
                    context.navigateTo(destinations[index].route);
                  },
                ),
                // child is the rendered route stack
                Expanded(child: child)
              ],
            );
          })
        : AutoTabsRouter.tabBar(
            routes: const [
              HomeTab(),
              SearchTap(),
              ChartTab(),
              MoreTab(),
              ProfileTab()
            ],
            builder: (context, child, _) {
              return Scaffold(
                body: child,
                bottomNavigationBar:
                    buildBottomNav(context, context.tabsRouter),
              );
            },
          );
  }

  Widget buildBottomNav(BuildContext context, TabsRouter tabsRouter) {
    final hideBottomNav = tabsRouter.topMatch.meta['hideBottomNav'] == true;
    return hideBottomNav
        ? const SizedBox.shrink()
        : Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                unselectedItemColor: Colors.black,
                selectedItemColor: kAppColor,
                items: [
                  BottomNavigationBarItem(
                      icon: Container(
                        decoration: BoxDecoration(
                            color: tabsRouter.activeIndex == 0
                                ? kAppGreen
                                : Colors.transparent,
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.home_outlined,
                            color: tabsRouter.activeIndex == 0
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        decoration: BoxDecoration(
                            color: tabsRouter.activeIndex == 1
                                ? kAppGreen
                                : Colors.transparent,
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            PhosphorIcons.magnifyingGlassLight,
                            color: tabsRouter.activeIndex == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        decoration: BoxDecoration(
                            color: tabsRouter.activeIndex == 2
                                ? kAppGreen
                                : Colors.transparent,
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Badge(
                            badgeColor: kPrimaryRed,
                            position: BadgePosition.topEnd(top: -8, end: -2),
                            badgeContent: Text(''),
                            child: InkWell(
                              onTap: () {
                                // context.pushRoute(CartRouter(children: [CartRoute()]));
                              },
                              child: Icon(
                                PhosphorIcons.shoppingBagOpenLight,
                                color: tabsRouter.activeIndex == 2
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        decoration: BoxDecoration(
                            color: tabsRouter.activeIndex == 3
                                ? kAppGreen
                                : Colors.transparent,
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            PhosphorIcons.list,
                            color: tabsRouter.activeIndex == 3
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        decoration: BoxDecoration(
                            color: tabsRouter.activeIndex == 4
                                ? kAppGreen
                                : Colors.transparent,
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            PhosphorIcons.user,
                            color: tabsRouter.activeIndex == 4
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      label: ''),
                ],
              ),
            ));
  }
}
/*  bottomBarItem('Home', Icons.home_rounded),
          bottomBarItem('Offers', Icons.local_offer_rounded),
          bottomBarItem('Orders', Icons.history_rounded),
          bottomBarItem('Notification', Icons.notifications),
          bottomBarItem('Profile', Icons.person_rounded), */
