import 'package:baseapp/domain/auth/auth_failure.dart';
import 'package:baseapp/domain/auth/i_auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:baseapp/domain/auth/value_objects.dart';
import 'package:baseapp/domain/auth/user.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  @override
  Future<Option<User>> getSignedInUser() {
    return Future.delayed(const Duration(seconds: 2), () => optionOf(User()));
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {EmailAddress? emailAddress, Password? password}) {
    return Future.delayed(const Duration(seconds: 2), () => right(unit));
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress? emailAddress, Password? password}) {
    return Future.delayed(const Duration(seconds: 2), () => right(unit));
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    return Future.delayed(const Duration(seconds: 2), () => right(unit));
  }

  @override
  Future<void> signOut() {
    return Future.delayed(const Duration(seconds: 2), () => right(unit));
  }
}
