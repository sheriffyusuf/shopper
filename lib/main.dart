import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shopper/route/router.gr.dart';
import 'package:nb_utils/nb_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialize();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // final _rootRouter = getIt<RootRouter>();
  final _rootRouter = RootRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF1759a7),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerDelegate: _rootRouter.delegate(),
      routeInformationProvider: _rootRouter.routeInfoProvider(),
      routeInformationParser: _rootRouter.defaultRouteParser(),
    );
  }
}
