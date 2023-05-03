import 'package:http/http.dart' as http;
import 'dart:convert';
void getHttp() async {
    var headers = {
    'username': 'saurabhss'
  };
  var request = http.Request('GET', Uri.parse('https://dataapi-g9t8.onrender.com/api/projects/ok'));
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  }
  else {
    print(response.reasonPhrase);
  }
}
void postHttp() async{
  var headers = {
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse('https://dataapi-g9t8.onrender.com/api/projects/timeline'));
  request.body = json.encode({
    "id": "1",
    "timeline": "2"
  });
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  }
  else {
    print(response.reasonPhrase);
  }
}
