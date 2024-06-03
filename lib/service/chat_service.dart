import 'package:dio/dio.dart';
import 'package:exam_end/model/chat.dart';


abstract class chatService {
  Dio dio = Dio();
  late Response response;
  String baseurl = "https://664dcb37ede9a2b55654e96c.mockapi.io/api/v1/people";

  Future<List<Chat>> getAllchat();
}

  class chatSerivceImpl extends chatService {


  @override
  Future<List<Chat>> getAllchat() async {
     List<Chat> mylist = [];
    try {
      response = await dio.get(baseurl);
      print(response.statusCode);

      List<Chat> mylist = List.generate(response.data.length,
          (index) => Chat.fromMap(response.data[index],));
      print(response.statusCode);

      if (response.statusCode == 200) {
        print("listData");
        return mylist;
      } else {
        print("noListData");

        return mylist;
      }
    } on DioException catch (e) {
      print(e.message);
      return mylist;
    }
  }
  }