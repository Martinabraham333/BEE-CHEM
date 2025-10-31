part of 'login_bloc.dart';

@freezed
abstract  class LoginState with _$LoginState {
  const factory LoginState({
  @Default([]) List<UserEntity>  userDetails,
  @Default(false) bool  isLoading,
  @Default('') String  msg,

  }) = _LoginState;
}
