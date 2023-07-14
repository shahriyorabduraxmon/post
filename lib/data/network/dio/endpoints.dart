// Project imports:
// ignore_for_file: non_consta

class Endpoints {
  Endpoints._();

  static String  baseUrl = 'http://81.95.236.123:4100/';


 // receiveTimeout
  static const  receiveTimeout = Duration(milliseconds: 15000);
  // connectTimeout
  static const  connectionTimeout = Duration(milliseconds: 15000);
  static const  sendTimeout = Duration(milliseconds: 15000);

  static String post = '${baseUrl}SMMS/api/v1.0/public/post/';
}
