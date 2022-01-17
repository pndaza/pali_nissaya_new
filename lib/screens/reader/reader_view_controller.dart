import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../client/shared_pref_client.dart';

final fullScreenStateProvider = StateProvider((_) => false);
final appBarHeight = StateProvider<double>((ref) {
  final isFullScreen = ref.watch(fullScreenStateProvider);
  return isFullScreen ? 0 : 56.0;
});
final scrollDirectionProvider = StateProvider<Axis>((ref) {
  return ref.read(sharedPreferenceClient).getScrollDirection();
});

final readerViewController =
    Provider<ReaderViewController>((ref) => ReaderViewController(ref));

class ReaderViewController {
  final Ref ref;
  ReaderViewController(this.ref);

  Future<void> toggleScrollDirection(Axis scrollDirection) async {
    if (scrollDirection == Axis.vertical) {
      ref.read(scrollDirectionProvider.notifier).state =   Axis.horizontal;
      ref.read(sharedPreferenceClient).saveScrollDirection(Axis.horizontal);
    } else {
      ref.read(scrollDirectionProvider.notifier).state = Axis.vertical;
      ref.read(sharedPreferenceClient).saveScrollDirection(Axis.vertical);
    }
  }

  void toggleFullScreenMode() {
    final screenMode = ref.read(fullScreenStateProvider);
    ref.read(fullScreenStateProvider.notifier).state = !screenMode;
  }
}
