import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/book_list.dart';
import 'home_view_controller.dart';
import '../../widgets/error_view.dart';
import '../../widgets/loading_view.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paliBooksProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('ပါဠိတော်နိဿယ'),
          centerTitle: true,
        ),
        body: state.when(
          data: (books) => PaliBookList(books: books),
          loading: () => const LoadingView(),
          error: (object, stackTrace) => const ErrorView(),
        ));
  }
}
