import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mainzima/Files/Constants/const_imports.dart';

import 'state.dart';
enum AppState{
  Loaded,
  Loading,
  Error
}
class SignupLogic extends GetxController {
  final SignupState state = SignupState();
  var appState = AppState.Loaded.obs;
  TextEditingController phone=TextEditingController();  // here we perform our phone authentication
  Future autophoneAuth()async {
    appState.value =AppState.Loading;
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+44 7123 123 456',
      verificationCompleted: (PhoneAuthCredential credential) {
        appState.value =AppState.Loaded;
      },

      verificationFailed: (FirebaseAuthException e) {
        appState.value =AppState.Error;
      },

      codeSent: (String verificationId, int? resendToken) {
        appState.value =AppState.Loaded;
      },

      codeAutoRetrievalTimeout: (String verificationId) {},
    );


  }
}
