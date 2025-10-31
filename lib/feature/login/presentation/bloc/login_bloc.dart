import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_info_manager/feature/login/domain/entities/user_entity.dart';
import 'package:personal_info_manager/feature/login/domain/usecases/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase usecase;
  LoginBloc(this.usecase) : super(LoginState()) {
    on<Login>(_login);
  }

  _login(Login event, Emitter<LoginState> emit) async {
  
    emit(state.copyWith(isLoading: true));
    try {
      final UserEntity result = await usecase.execute(
        event.email,
        event.password,
      );
      List<UserEntity> userDetails = [result];
     
      emit(state.copyWith(isLoading: false, userDetails: userDetails, msg: ''));
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          msg: 'Cannot login : Unexpected error occured',
        ),
      );
    }
  }
}
