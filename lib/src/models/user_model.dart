class UserModel {
  int? id;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? accessToken;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.phone,
    this.accessToken,
  });

  // From Json
  UserModel.fromJson(Map<String,dynamic>json){
    id=json['id'];
    name=json['name'];
    id=json['email'];
    id=json['password'];
    id=json['phone'];
    id=json['accessToken'];
  }

  // To Json
  Map<String,dynamic> toJson()=>{
    'id':id,
    'name':name,
    'email':email,
    'password':password,
    'phone':phone,
    'accessToken':accessToken,
  };


}