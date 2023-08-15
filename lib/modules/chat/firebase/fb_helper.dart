import 'package:firebase_auth/firebase_auth.dart';


import '../model/process_response.dart';
import 'fb_auth_controller.dart';

mixin FbHelper {
  ProcessResponse get failureResponse {
    FbAuthController().signOut();
    return ProcessResponse("Something went wrong!! try again later.", false);
  }

  ProcessResponse getAuthExceptionResponse(FirebaseAuthException e) {
    FbAuthController().signOut();
    return ProcessResponse(e.message ?? "", false);
  }
}
