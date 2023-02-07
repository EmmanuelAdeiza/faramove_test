import 'package:auto_route/auto_route.dart';
import 'package:faramove_test/global/custom_bottom_nav.dart';
import 'package:faramove_test/routing/app_router.dart';
import 'package:flutter/material.dart';

class RouteMainScreen extends StatelessWidget {
  const RouteMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: const [
          HomeRoute(),
          ResourcesRoute(),
          SessionRoute(),
          CommunityRoute(),
          AccountRoute(),
        ],
        builder: (context, child, animation) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
              bottomNavigationBar: CustomBottomNav(tabsRouter: tabsRouter),
              body: FadeTransition(
                opacity: animation,
                child: child,
              ));
        });
  }
}
