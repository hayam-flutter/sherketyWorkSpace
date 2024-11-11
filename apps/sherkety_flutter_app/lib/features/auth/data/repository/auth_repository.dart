import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  Future<Either<String, String>> register(
      {required String code, required String phone}) async {
    final Completer<Either<String, String>> completer = Completer();
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;

      await auth.verifyPhoneNumber(
        phoneNumber: code + phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // await _auth.signInWithCredential(
          //   credential,
          // );
          // log('sing in with credential');
        },
        verificationFailed: (FirebaseAuthException e) {
          if (!completer.isCompleted) {
            completer.complete(Left(e.message ?? 'Verification failed'));
            log('Verification failed: ${e.message}');
          }
        },
        codeSent: (String verificationId, int? resendToken) {
          log('Code sent to ${code + phone}');
          if (!completer.isCompleted) {
            completer.complete(Right(verificationId));
            log('Code sent to ${code + phone}');
          }
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          log('Auto retrieval timeout');
        },
      );
      return completer.future;
    } on FirebaseAuthException catch (e) {
      log('Error: ${e.message}');
      return Left(e.message ?? 'An unknown error occurred');
    } catch (e) {
      log('Error: $e');
      return const Left('An unexpected error occurred');
    }
  }
}
