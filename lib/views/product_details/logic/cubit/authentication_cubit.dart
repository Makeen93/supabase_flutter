import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  final supabase = Supabase.instance.client;

  Future<void> signUp(
      {required String name,
      required String email,
      required String password}) async {
    emit(SignUpLoading());
    try {
      await supabase.auth.signUp(email: email, password: password);
      emit(SignUpSuccess());
    } on AuthException catch (e) {
      log(e.toString());
      emit(LoginError(e.message));
    } catch (e) {
      log(e.toString());

      emit(LoginError(e.toString()));
    }
  }

  Future<void> login({required String email, required String password}) async {
    emit(LoginLoading());
    try {
      await supabase.auth.signInWithPassword(email: email, password: password);
      emit(LoginSuccess());
    } on AuthException catch (e) {
      log(e.toString());
      emit(LoginError(e.message));
    } catch (e) {
      log(e.toString());

      emit(LoginError(e.toString()));
    }
  }
}
