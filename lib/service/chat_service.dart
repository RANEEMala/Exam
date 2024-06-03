// service/chat_service.dart
import 'package:dio/dio.dart';
import 'package:exam_end/model/chat.dart';



 Future<List<Chat>> getAllChat() async {
  Dio req = Dio();
  Response response = await req.get("https://664dcb37ede9a2b55654e96c.mockapi.io/api/v1/people");
 
  print(response);
  try {
    List <Chat> data =List.generate(
      response.data.length,
      (index) => Chat.fromMap(
        response.data[index],
      ),
  );
   return data;
  } catch (e) {
   print(e);
   return [];
  }
    
}
