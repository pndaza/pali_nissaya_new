import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'deep_link_handler.dart';
import 'deep_link_view.dart';
import 'screens/home/home_page.dart';
import 'screens/home/home_view_controller.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _deepLinkBloc = DeepLinkHandler();
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pali Nissaya',
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData.dark(),
      themeMode: themeMode,
      home: StreamBuilder<String>(
          stream: _deepLinkBloc.state,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              debugPrint(snapshot.data);
              debugPrint('opening from deep link');
              return DeepLinkView(
                  key: Key(snapshot.data!), url: snapshot.data!);
            } else {
              return const Home();
            }
          }),
    );
  }
}
