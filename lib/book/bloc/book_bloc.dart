import 'package:custom_list_card/book/model/repository/book_repository.dart';

import '../../stream_controler/custom_stream_controller.dart';

class BookBloc {
  var _bookRepository = BookRepository();
  var bookStreamController = CustomStreamController();

  getBookRemote() async {
    print('Fetching Details From Server');
    await _bookRepository.getBookItem().then((value) {
      print('${value.length} Ticket found on server');
      bookStreamController.setStream(value);
    }).catchError((onError) => print('Failed to fetch Details from Server.\nReason - $onError'));
  }

  /*getCommentDetails(int id) async {
    logger.i('Fetching Comment From Server');
    await _ticketRepository.getCommentsRemote(id).then((value) {
      logger.d('${value.responseList!.length} Comment found on server');
      commentStreamController.setStream(value.responseList);
    }).catchError((onError) => logger
        .e('Failed to fetch Comment from Server.\nReason - $onError'));
  }*/

  void dispose() {
    bookStreamController.dispose();
  }
}