import 'package:http/http.dart' as http;
import 'dart:convert';
void getHttp() async {
    var headers = {
    'username': 'saurabhss'
  };
  var request = http.Request('GET', Uri.parse('http://localhost:8090/api/projects/ok'));
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
  var request = http.Request('POST', Uri.parse('https://b4c9-106-77-141-46.ngrok-free.app/api/projects/timeline'));
  request.body = json.encode({
    "id": "1",
    "timeline": "3"
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