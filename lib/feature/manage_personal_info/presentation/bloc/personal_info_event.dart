part of 'personal_info_bloc.dart';

@freezed
class PersonalInfoEvent with _$PersonalInfoEvent {
  const factory PersonalInfoEvent.fetchPersonalInfoList() =
      FetchPersonalInfoList;
  const factory PersonalInfoEvent.searchPersonalInfoList(String query) =
      SearchPersonalInfoList;
  const factory PersonalInfoEvent.fetchRoleDetails() = FetchRoleDetails;
  const factory PersonalInfoEvent.rollCheckBox(int index) = RollCheckBox;
  const factory PersonalInfoEvent.saveDetails(Map<String,dynamic> saveDetails) = SaveDetails;
}
