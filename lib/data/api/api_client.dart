import 'package:get/get.dart';

//used to talk to the server
class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeaders; //storing data locally

  //everytime we talk to the server we need to mention headers in the url
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout =
        Duration(seconds: 30); //try to get data from server from 30 seconds
    _mainHeaders = {
      //basic header file in json format.
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization':
          'Bearer $token', //when we make lot of post request we send token from client to server
      //bearer is type of token
    };
  }

  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
