import 'package:ecommerce/features/auth/data/models/login_request.dart';
import 'package:ecommerce/features/auth/data/models/register_request.dart';
import 'package:ecommerce/features/auth/data/reposatories/auth_reposatory.dart';
import 'package:ecommerce/features/auth/presentation/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitiale());

  final _authReposatory = AuthReposatory();

  Future<void> register(RegisterRequest request) async {
    emit(RegisterLoading());
    try {
      await _authReposatory.register(request);
      emit(RegisterSuccess());
    } catch (e) {
      emit(RegisterError(message: e.toString()));
    }
  }

  Future<void> login(LoginRequest request) async {
    emit(LoginLoading());
    try {
      await _authReposatory.login(request);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginError(message: e.toString()));
    }
  }
}
