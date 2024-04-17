import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/src/core/router/routes.dart';
import 'package:hubtel_coding_challenge/src/core/shared/models/history.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

import '../core/shared/app_theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      duration: const Duration(milliseconds: 550),
      reverseDuration: const Duration(milliseconds: 300),
      useDefaultLoading: false,
      switchInCurve: Curves.easeInOut,
      switchOutCurve: Curves.easeInOut,
      overlayColor: Colors.black,
      child: MultiProvider(
        providers: [ChangeNotifierProvider<HistoryModel>(create: (context) => HistoryModel(),),],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Hubtel coding challenge',
          routerConfig: AppRouter.goRouter,
        
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',
        
          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: AppTheme.theme(),
        ),
      ),
    );
  }
}
