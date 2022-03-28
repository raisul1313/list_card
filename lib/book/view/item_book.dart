import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_list_card/book/model/dto/books.dart';
import 'package:flutter/material.dart';

class ItemBook extends StatelessWidget {
  final Book book;

  const ItemBook({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      SizedBox(child: Image.asset("assets/images/load.png")),
                  imageUrl: book.imageUrl!,
                  errorWidget: (context, url, error) {
                    print(error);
                    return Icon(
                      Icons.error,
                      color: Colors.red,
                    );
                  }),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.bookName!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "by " + book.bookAuthor! + ",",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(book.bookDescription!,
                        maxLines: 5, overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
