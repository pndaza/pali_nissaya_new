import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:pali_nissaya/models/book.dart';
import 'package:pali_nissaya/screens/home/home_view_controller.dart';

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPaliBooks = ref.watch(paliBooksProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text('ပါဠိတော်နိဿယ'),
          centerTitle: true,
        ),
        body: asyncPaliBooks.when(
            data: _buildGroupList,
            loading: _buildLoading,
            error: _buildErrorInfo));
  }

  Widget _buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildErrorInfo(Object error, StackTrace? stackTrace) {
    return Center(
      child: Text("something's wrong."),
    );
  }

  Widget _buildGroupList(List<Book> books) {
    return GroupedListView<Book, String>(
      elements: books,
      groupBy: (element) =>
          '${element.categoryID}--${element.categoryDescription}',
      itemComparator: (element1, element2) =>
          element1.id.compareTo(element2.id),
      groupSeparatorBuilder: (String groupByValue) =>
          HeaderView(category: groupByValue),
      itemBuilder: (context, element) => BookListTile(book: element),
    );
  }
}

class BookListTile extends ConsumerWidget {
  const BookListTile({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      shadowColor: Colors.brown,
      elevation: 4.0,
      child: ListTile(
        title: Text(
          book.name,
          style: TextStyle(fontSize: 22),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        onTap: () =>
            ref.read(homeViewController).openPageChoice(context, book),
      ),
    );
  }
}

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key, required this.category}) : super(key: key);
  final String category;

  @override
  Widget build(BuildContext context) {
    final catName = category.split('--')[1];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
          child: Text(
        catName,
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.brown),
      )),
    );
  }
}
