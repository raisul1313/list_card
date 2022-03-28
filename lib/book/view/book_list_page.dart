import 'package:custom_list_card/book/bloc/book_bloc.dart';
import 'package:custom_list_card/book/model/dto/books.dart';
import 'package:custom_list_card/book/view/item_book.dart';
import 'package:flutter/material.dart';

class BookListPage extends StatefulWidget {
  const BookListPage({Key? key}) : super(key: key);

  @override
  State<BookListPage> createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  late List<Book> _bookList;
  late BookBloc _bookBloc;

  @override
  void initState() {
    _bookBloc = BookBloc();
    _bookList = [];
    _bookBloc.getBookRemote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List View With Card',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                StreamBuilder<dynamic>(
                    stream: _bookBloc.bookStreamController.streamListener,
                    builder: (context, snapshot) {
                      _bookList =
                          snapshot.hasData ? snapshot.data as List<Book> : [];
                      print(snapshot.data);
                      return _bookList.isNotEmpty
                          ? _bookListWidget()
                          : Container(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bookListWidget() {
    return Column(
      children: [
        ..._bookList.map((e) => ItemBook(
              book: e,
            ))
      ],
    );
  }
}
