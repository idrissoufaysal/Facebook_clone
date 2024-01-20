import 'dart:convert';

import 'package:facebook_b13/apiServices/config.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

var log = Logger();

class NetworkHandler {
  Future <dynamic> get(String url)async{

    url=formater(url);
    var response=await http.get(Uri.parse(url));
    if(response.statusCode==200 || response.statusCode==201){
      log.i(response.body);
      return response;
    }
    
    log.d(response.body);
    log.d(response.statusCode);
    
  }

  String formater(String url){
    return ApiUrle+url;
  }

  Future<dynamic> post(String url,Map<String,String> body)async{
  url=formater(url);
  var response=await http.post(Uri.parse(url),body: body);
  if (response.statusCode==200 || response.statusCode==201) {
    log.i(response.body);
    var jsonRespones=jsonDecode(response.body);
    print(jsonRespones);
    return jsonRespones;
  }
  log.d(response.body);
    log.d(response.statusCode);
  }
}