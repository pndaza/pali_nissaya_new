import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uni_links/uni_links.dart';
import 'package:window_manager/window_manager.dart';

import 'deep_link_handler.dart';
import 'repositories/database.dart';
import 'screens/home/home_page.dart';
import 'screens/home/home_view_controller.dart';
import 'screens/nsy_list/nsy_choice.dart';
import 'utils/platform_helper.dart';
import 'utils/window_config.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => MyAppState();
}

class MyAppState extends ConsumerState<MyApp> with WindowListener {
  final _navigatorKey = GlobalKey<NavigatorState>();
  late final DeepLinkHandler _mobileDeepLink;
  StreamSubscription<String>? _mobilelinkSubscription;
  StreamSubscription<Uri?>? _desktoplinkSubscription;

  @override
  void initState() {
    super.initState();
    if (isMobile) {
      // _mobileDeepLinkBloc = DeepLinkHandler();
      initMobileDeepLinks();
    }
    if (isDesktop) {
      windowManager.addListener(this);
      windowManager.setPreventClose(true);
      _handleIncomingLinks();
      _handleInitialUri();
    }
  }

  @override
  void dispose() {
    _mobilelinkSubscription?.cancel();
    _desktoplinkSubscription?.cancel();
    if (isDesktop) {
      windowManager.removeListener(this);
    }
    super.dispose();
  }

  @override
  void onWindowClose() async {
    await windowManager.hide();
    final isMaximized = await windowManager.isMaximized();

    if (!isMaximized) {
      final position = await windowManager.getPosition();
      final size = await windowManager.getSize();
      await WindowConfig.saveWindowConfig({
        'left': position.dx,
        'top': position.dy,
        'width': size.width,
        'height': size.height,
        'isMaximized': 0.0,
      });
    } else {
      await WindowConfig.saveWindowConfig({
        'isMaximized': 1.0,
      });
    }

    await DatabaseHelper().close();
    await windowManager.destroy();
  }

  @override
  void onWindowFocus() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pali Nissaya',
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData.dark(),
      themeMode: themeMode,
      navigatorKey: _navigatorKey,
      home: const Home(),
    );
  }

  Future<void> initMobileDeepLinks() async {
    _mobileDeepLink = DeepLinkHandler();
    _mobilelinkSubscription = _mobileDeepLink.state.listen((uri) {
      debugPrint('onAppLink: $uri');
      openMobileAppLink(uri);
    });
  }

  /// Handle incoming links - the ones that the app will recieve from the OS
  /// while already started.
  void _handleIncomingLinks() {
    if (!kIsWeb) {
      // It will handle app links while the app is already started - be it in
      // the foreground or in the background.
      _desktoplinkSubscription = uriLinkStream.listen((Uri? uri) {
        if (uri != null) {
          debugPrint('onAppLink: $uri');
          openDesktopAppLink(uri);
        }
      }, onError: (Object err) {
//
      });
    }
  }

  /// Handle the initial Uri - the one the app was started with
  ///
  /// **ATTENTION**: `getInitialLink`/`getInitialUri` should be handled
  /// ONLY ONCE in your app's lifetime, since it is not meant to change
  /// throughout your app's life.
  ///
  /// We handle all exceptions, since it is called from initState.
  Future<void> _handleInitialUri() async {
    // In this example app this is an almost useless guard, but it is here to
    // show we are not going to call getInitialUri multiple times, even if this
    // was a weidget that will be disposed of (ex. a navigation route change).

    try {
      final uri = await getInitialUri();
      if (uri != null) {
        debugPrint('onAppLink: $uri');
        openDesktopAppLink(uri);
      }
    } on PlatformException {
      // Platform messages may fail but we ignore the exception
      debugPrint('falied to get initial uri');
    } on FormatException catch (err) {
      debugPrint(err.toString());
    }
  }

  void openMobileAppLink(String url) {
    final paliBookId = parseBookId(url);
    final pageNumber = parsePageNumber(url);
    if (paliBookId != null && pageNumber != null) {
      final route = nsyChoiceRoute(
        paliBookId: paliBookId,
        pageNumber: int.parse(pageNumber),
      );
      _navigatorKey.currentState
          ?.pushAndRemoveUntil(route, (Route<dynamic> route) => false);
    }
  }

  void openDesktopAppLink(Uri uri) {
    final url = uri.toString();
    final paliBookId = parseBookId(url);
    final pageNumber = parsePageNumber(url);
    debugPrint(paliBookId);
    debugPrint(pageNumber);
    if (paliBookId != null && pageNumber != null) {
      final route = nsyChoiceRoute(
        paliBookId: paliBookId,
        pageNumber: int.parse(pageNumber),
      );

      _navigatorKey.currentState
          ?.pushAndRemoveUntil(route, (Route<dynamic> route) => false);
    }
  }

  MaterialPageRoute nsyChoiceRoute(
      {required String paliBookId, required int pageNumber}) {
    return MaterialPageRoute(
      builder: (_) => NsyChoice(
        paliBookID: paliBookId,
        paliBookPageNumber: pageNumber,
        isOpenFromDeepLink: true,
      ),
    );
  }

  String? parseBookId(String url) {
    final uri = Uri.parse(url);
    return uri.queryParameters['id'];
    /*
    RegExp regexId = RegExp(r'\w+_\w+_\d+(_\d+)?');
    final matchId = regexId.firstMatch(url);
    return matchId?.group(0);
    */
  }

  String? parsePageNumber(String url) {
    final uri = Uri.parse(url);
    return uri.queryParameters['page'];
    /*
    RegExp regexPage = RegExp(r'\d+$');
    final matchPage = regexPage.firstMatch(url);
    return matchPage?.group(0);
    */
  }
}
