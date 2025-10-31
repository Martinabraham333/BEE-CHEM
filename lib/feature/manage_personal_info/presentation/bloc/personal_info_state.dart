part of 'personal_info_bloc.dart';

@freezed
abstract class  PersonalInfoState with _$PersonalInfoState {
  const  factory PersonalInfoState({
  @Default([]) List<PersonalInfoEntity>  personalDetails,
  @Default(false) bool  isLoading,
  @Default('') String  msg,

  }) = _PersonalInfoState;
}
