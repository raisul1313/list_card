class ApiProvider {
  //static const String DEV_URL = 'http://172.16.26.167:4002';
  static const String DEV_URL = 'http://103.92.84.135:4002'; //public ip
  //static const String DEV_URL = 'http://172.16.212.167:4002';

  //static const String DEV_URL = 'http://d8c8d38ba099.ngrok.io/api/';
  static const String LIVE_URL = '';

  static const String URL = DEV_URL;

  static String getAssetUrl(String path) => '$URL$path';

  static var BASE_URL = '${URL}/';

  static String get loginApi => "auth";
  static String get changePasswordApi => "user/update-password";
  static String get getTicketsApi => "ticket/find-ticket-list-by-service-area-id?serviceAreaId=";
  static String get getStatusListApi => "data/states-list";
  static String get changeStatusApi => "ticket/ticket-states-update";
  static String get getTicketDetailsApi => "/ticket/details/";
  static String get getSmsDetailsApi => "/ticket/get-sms/";
  static String get getHistoryDetailsApi => "/ticket/get-history/";
  static String get getEmailListApi => "/ticket/get-email/";
  static String get getCommentListApi => "/ticket/get-comment/";
  static String get addCommentApi => "/ticket/add-comment?comment=";
  static String get addExtendTimeApi => "/ticket/next-invoke-time-update?ticketId=";
  static String get getProblemTypeApi => "/data/problem-types-list";
  static String get getDashboardsApi => "/dashboard/dashboard-data-by-service-area?problemTypeId=";
  static String get getZoneDashboardsApi => "/dashboard/service-area-by-parent?id=";
  static String get sendOtpApi => "/sms/ticket-state-update/send-otp?userName=";
  static String get verifyOtpApi => "/sms/validate-otp-by-username?otp=";
  static String get getAreaApi => "/ticket/service-area-by-user?userId=";
  static String get sendForgotOtpApi => "/sms/forget-password/send-otp?mobileNo=";
  static String get verifyForgotOtpApi => "/sms/validate-otp-by-cell-no?mobileNo=";
  static String get setPasswordApi => "/user/change-user-password";

}
