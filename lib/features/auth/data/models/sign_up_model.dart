import 'package:hive/hive.dart';
part 'sign_up_model.g.dart';

@HiveType(typeId: 0)
class RegisterModel{
  @HiveField(0)  
 final String? name;

  @HiveField(1)
 final String? email;

  @HiveField(2)
 final String uId;

  @HiveField(4)
 final String? image;





  RegisterModel({required this.name,required this.email,required this.uId,
 this.image,});

  factory RegisterModel.fromJson({required Map<String,dynamic>? json}){
    return RegisterModel(
    name:json?['name']??'',
    email:json?['email']??'',
    uId:json?['uid']??"",
    image:json?['image']??'',

    );
  }


  Map<String,dynamic> toMap(){
    return{
      'name':name,
      'email':email,
      'uid':uId,
      'image':image,
   
    };
  }
}