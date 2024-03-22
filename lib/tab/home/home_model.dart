import 'package:firebase_auth/firebase_auth.dart';

class HomeModel {
  String getEmail() {
    return FirebaseAuth.instance.currentUser?.email ?? '이메일 없음';
  }

  String getNickName() {
    return FirebaseAuth.instance.currentUser?.displayName ?? '이름 없음';
  }

  String getProfileImageUrl() {
    return FirebaseAuth.instance.currentUser?.photoURL ??
        'https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2022/06/03/7d17ec30-276f-4265-b056-c3a691a5a8f1.jpg';
  }
}
