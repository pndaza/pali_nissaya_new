import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pali_nissaya/models/nsybook.dart';
import 'package:pali_nissaya/widgets/error_view.dart';
import 'package:pali_nissaya/widgets/loading_view.dart';
import 'package:pali_nissaya/screens/nsy_list/nsy_choice_providers.dart';

class NsyChoice extends ConsumerWidget {
  const NsyChoice(
      {Key? key, required this.paliBookID, required this.paliBookPageNumber})
      : super(key: key);
  final String paliBookID;
  final int paliBookPageNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nsyBookState =
        ref.watch(nsyBooksProvider('$paliBookID-$paliBookPageNumber'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('နိဿယ မူကွဲများ'),
      ),
      body: nsyBookState.when(
          data: (data) => _buildBookShelf(data),
          loading: () => const LoadingView(),
          error: (_, __) => const ErrorView()),
    );
  }

  Widget _buildBookShelf(List<NsyBook> nsyBooks) {
    return GridView.extent(
        maxCrossAxisExtent: 250,
        mainAxisSpacing: 32,
        crossAxisSpacing: 32,
        childAspectRatio: 0.58,
        children: nsyBooks
            .map((nsyBook) => GridItem(
                  nsyBook: nsyBook,
                ))
            .toList());
  }
}

class GridItem extends ConsumerWidget {
  const GridItem({Key? key, required this.nsyBook}) : super(key: key);
  final NsyBook nsyBook;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(nsyChoiceViewController).openBook(context, nsyBook);
      },
      child: Card(
        margin: const EdgeInsets.all(4),
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage('assets/books/cover/${nsyBook.id}.jpg'),
                fit: BoxFit.fill,
              ),
              Container(
                height: 5,
              ),
              Expanded(
                  child: Text(nsyBook.name,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center))
            ],
          ),
        ),
      ),
    );
  }
}
