import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:pali_nissaya/screens/page_list/page_choice_providers.dart';
import '../../models/book.dart';

class PageListView extends ConsumerWidget {
  final Book book;
  final ItemScrollController? itemScrollController;
  const PageListView({Key? key, required this.book, this.itemScrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = (book.lastPage - book.firstPage) + 1;
    return ScrollablePositionedList.separated(
      itemCount: count,
      itemBuilder: (context, index) {
        final pageNumber = index + book.firstPage;
        return Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: ListTile(
            dense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
            title: Text('$pageNumber', style: const TextStyle(fontSize: 16.0)),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              ref
                  .read(pageChoiceViewController)
                  .openNsyChoice(context, book, pageNumber);
            },
          ),
        );
      },
      itemScrollController: itemScrollController,
      separatorBuilder: (_, __) => const Divider(height: 1.0),
    );
  }
}
