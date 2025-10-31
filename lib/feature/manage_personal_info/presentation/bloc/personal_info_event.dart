part of 'personal_info_bloc.dart';

@freezed
class PersonalInfoEvent with _$PersonalInfoEvent {
  const factory PersonalInfoEvent.fetchPersonalInfoList() = FetchPersonalInfoList;
}