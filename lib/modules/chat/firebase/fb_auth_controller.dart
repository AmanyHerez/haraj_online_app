import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:haraj_app/modules/chat/firebase/fb_helper.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../model/chat_user.dart';
import '../model/process_response.dart';
import 'fb_firestore_users_controller.dart';

class FbAuthController with FbHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FacebookAuth _facebookAuth = FacebookAuth.instance;
  final GoogleSignIn _googleAuth = GoogleSignIn();

  static FbAuthController? _instance;
  FbAuthController._();

  factory FbAuthController() {
    return _instance ??= FbAuthController._();
  }

  Future<ProcessResponse> signInWithEmail(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (userCredential.user != null) {
        bool isEmailVerified = userCredential.user!.emailVerified;
        String message = isEmailVerified
            ? "Logged in successfully"
            : "Email is not verified, please check your email!";
        if (isEmailVerified) {
          await FbFireStoreUsersController().updateFcmToken(
              await FirebaseMessaging.instance.getToken() ?? '');
          await FbFireStoreUsersController().updateMyOnlineStatus(true);
        } else {
          await userCredential.user!.sendEmailVerification();
        }
        return ProcessResponse(message, isEmailVerified);
      }
    } on FirebaseAuthException catch (e) {
      return getAuthExceptionResponse(e);
    }
    return failureResponse;
  }

  Future<ProcessResponse> createAccount(ChatUser chatUser) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: chatUser.email, password: chatUser.password);
      if (userCredential.user != null) {
        await userCredential.user!.sendEmailVerification();
        await userCredential.user!.updateDisplayName(chatUser.name);
        chatUser.id = userCredential.user!.uid;
        await _auth.signOut();
        await FbFireStoreUsersController().saveUser(chatUser);
        return ProcessResponse("Verification email sent, verify and login_mapper.dart");
      }
    } on FirebaseAuthException catch (e) {
      return getAuthExceptionResponse(e);
    }
    return failureResponse;
  }

  Future<ProcessResponse> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return ProcessResponse("Reset link sent successfully");
    } on FirebaseAuthException catch (e) {
      return getAuthExceptionResponse(e);
    } catch (e) {
      return failureResponse;
    }
  }

  Future<ProcessResponse> changePassword(String newPassword) async {
    try {
      await currentUser?.updatePassword(newPassword);
      return ProcessResponse('Password changed successfully');
    } on FirebaseAuthException catch (e) {
      return getAuthExceptionResponse(e);
    } catch (e) {
      return failureResponse;
    }
  }

  Future<ProcessResponse?> signInWithFacebook() async {
    try {
      final isInternetConnected =
          await InternetConnectionChecker().hasConnection;
      LoginResult loginResult;
      if (isInternetConnected) {
        loginResult = await _facebookAuth.login();
      } else {
        return ProcessResponse('No Internet Connection Available !!', false);
      }
      if (loginResult.status.name == 'success') {
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(loginResult.accessToken!.token);
        final userCredential = await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential);
        final user = userCredential.user;
        if (user != null) {
          ChatUser chatUser = ChatUser();
          chatUser.email = user.email ?? '';
          chatUser.name = user.displayName ?? 'Type User';
          chatUser.image = user.photoURL ?? '';
          chatUser.id = user.uid;

          await FbFireStoreUsersController().saveUser(chatUser);
          await FbFireStoreUsersController().updateFcmToken(
              await FirebaseMessaging.instance.getToken() ?? '');
          await FbFireStoreUsersController().updateMyOnlineStatus(true);

          return ProcessResponse("Logged in successfully");
        }
      } else {
        return null;
      }
    } on FirebaseAuthException catch (e) {
      return getAuthExceptionResponse(e);
    }
    return failureResponse;
  }

  Future<ProcessResponse?> signInWithGoogle() async {
    try {
      final isInternetConnected =
          await InternetConnectionChecker().hasConnection;
      GoogleSignInAccount? googleUser;
      if (isInternetConnected) {
        googleUser = await _googleAuth.signIn();
      } else {
        return ProcessResponse('No Internet Connection Available !!', false);
      }

      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        final userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);

        final user = userCredential.user;
        if (user != null) {
          bool isEmailVerified = userCredential.user!.emailVerified;
          String message = isEmailVerified
              ? "Logged in successfully"
              : "Email is not verified, please check your email!";

          ChatUser chatUser = ChatUser();
          chatUser.email = user.email ?? '';
          chatUser.name = user.displayName ?? 'Type User';
          chatUser.image = user.photoURL ?? '';
          chatUser.id = user.uid;
          if (isEmailVerified) {
            await FbFireStoreUsersController().saveUser(chatUser);
            await FbFireStoreUsersController().updateFcmToken(
                await FirebaseMessaging.instance.getToken() ?? '');
            await FbFireStoreUsersController().updateMyOnlineStatus(true);
          } else {
            await signOut();
            await userCredential.user!.sendEmailVerification();
          }
          return ProcessResponse(message, isEmailVerified);
        }
      } else {
        return null;
      }
    } on FirebaseAuthException catch (e) {
      return getAuthExceptionResponse(e);
    }
    return failureResponse;
  }

  Future<void> signOut() async {
    await FbFireStoreUsersController().updateMyOnlineStatus(false);
    await FbFireStoreUsersController().updateFcmToken('');
    try {
      await _auth.signOut();
      await _googleAuth.disconnect();
      await _googleAuth.signOut();
      await _facebookAuth.logOut();
    } catch (e) {
      log(e.toString());
    }
  }

  bool get loggedIn => _auth.currentUser != null;

  User? get currentUser => _auth.currentUser;
}
