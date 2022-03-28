import 'package:custom_list_card/book/model/dto/books.dart';

import '../provider/book_provider.dart';

class BookRepository {
  final _bookProvider = BookProvider();
  Future<List<Book>> getBookItem() => _bookProvider.getBookItem();

/*  //Future<List<Ticket>> getTicketsRemote() => _ticketProvider.getTicketItem();
  Future<TicketResponse> getTickets(String id) => _bookProvider.getTicketsItem(id);
  Future<StatusResponse> getStatusRemote() => _bookProvider.getStatusItem();
  Future<StatusResponse> updateStatusRemote(StatusChange statusChange) => _bookProvider.updateStatus(statusChange);
  Future<StatusResponse> updateInvokeTimeRemote(int id,String time,String type) => _bookProvider.updateInvokeTime(id,time,type);
  Future<DetailsResponse> getTicketDetailsRemote(int id) => _bookProvider.getTicketDetails(id);
  Future<SmsResponse> getSmsDetailsRemote(int id) => _bookProvider.getSmsDetails(id);
  Future<HistoryResponse> getHistoryDetailsRemote(int id) => _bookProvider.getHistoryDetails(id);
  Future<EmailResponse> getEmailsRemote(int id) => _bookProvider.getEmails(id);
  Future<CommentResponse> getCommentsRemote(int id) => _bookProvider.getComments(id);
  Future<bool> addCommentsRemote(int id, String comment) => _bookProvider.addComment(id,comment);
  Future<bool> sendOtpRemote(String userName) => _bookProvider.sendOtp(userName);
  Future<OtpVerifyResponse> otpVerifyRemote(String otp, String userName) => _bookProvider.otpVerify(otp,userName);*/

}