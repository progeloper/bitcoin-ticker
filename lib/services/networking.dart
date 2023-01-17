import 'package:http/http.dart' as http;
import 'dart:convert';




class NetworkHelper{
  NetworkHelper(this.url);
  final url;

  dynamic getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      var source = jsonDecode(response.body);
      return source['rate'];
    } else print(response.statusCode);
  }
}
