import 'dart:io';
import 'package:image_picker/image_picker.dart';

class CreateModel{
  final _picker = ImagePicker();

  Future<File?> getImage() async {
   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
   if(image == null){ //image가 null이면 null을 return 하도록 File?에 null이 들어 올 수도 있다.
     return null;
   }
   return File(image.path);
  }
}