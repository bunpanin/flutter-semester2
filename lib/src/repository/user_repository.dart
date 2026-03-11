import 'package:flutter_semester2/global_config.dart';
import 'package:flutter_semester2/src/models/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
final dio = Dio();
Future<UserModel> register(UserModel userdata)async{
  String url = "${api_url}/register";
  UserModel? user;

  Response res = await dio.post(
    url,
    Data: userdata.toJson(),
    options: Options(
      headers: {
         Headers.contentTypeHeader:Headers.jsonContentType,
      }
    )
  );
  if(res.statusCode == 200){
    var user = UserModel.

  }
  return user;
}