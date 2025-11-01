import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/personal_info_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/role_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/usecases/personal_info_usecase.dart';

part 'personal_info_event.dart';
part 'personal_info_state.dart';
part 'personal_info_bloc.freezed.dart';

class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  final PersonalInfoUsecase usecase;
  PersonalInfoBloc(this.usecase) : super(PersonalInfoState()) {
    on<FetchPersonalInfoList>(_fetchPersonalInfoList);
    on<SearchPersonalInfoList>(_searchPersonalInfoList);
    on<FetchRoleDetails>(_fetchRoleDetails);
    on<RollCheckBox>(_rollCheckBox);
    on<SaveDetails>(_saveDetails);
  }
  _saveDetails(SaveDetails event, Emitter<PersonalInfoState> emit) async {
    emit(state.copyWith(isLoading: true, msg: ''));
    try {
      final result = await usecase.saveDetails(event.saveDetails);

      final List<RoleEntity> roleDetails = await usecase.fetchRoleDetails();

      final List<Map<String, dynamic>> isRoleCheck = [];
      for (var element in roleDetails) {
        isRoleCheck.add({'id': element.id, 'isChecked': false});
      }

      emit(
        state.copyWith(
          isLoading: false,
          msg: 'success',
          isRoleCheck: isRoleCheck,
          roleDetails: roleDetails,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, msg: 'failure'));
    }
  }

  _rollCheckBox(RollCheckBox event, Emitter<PersonalInfoState> emit) {
    final List<Map<String, dynamic>> isRoleCheck = [];
    for (var i = 0; i < state.roleDetails.length; i++) {
      if (i == event.index) {
        isRoleCheck.add({'id': state.roleDetails[i].id, 'isChecked': true});
      } else {
        isRoleCheck.add({'id': state.roleDetails[i].id, 'isChecked': false});
      }
    }
    emit(state.copyWith(isRoleCheck: isRoleCheck, msg: ''));
  }

  _fetchRoleDetails(
    FetchRoleDetails event,
    Emitter<PersonalInfoState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final List<RoleEntity> roleDetails = await usecase.fetchRoleDetails();

      final List<Map<String, dynamic>> isRoleCheck = [];
      for (var element in roleDetails) {
        isRoleCheck.add({'id': element.id, 'isChecked': false});
      }

      emit(
        state.copyWith(
          isLoading: false,
          roleDetails: roleDetails,
          msg: '',
          isRoleCheck: isRoleCheck,
        ),
      );
    } catch (e) {
      print(e);
      emit(
        state.copyWith(
          isLoading: false,
          msg: 'Error occurs while fetching personal details',
        ),
      );
    }
  }

  _fetchPersonalInfoList(
    FetchPersonalInfoList event,
    Emitter<PersonalInfoState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final List<PersonalInfoEntity> personalDetail = await usecase
          .fetchPersonalInfoList();

      emit(
        state.copyWith(
          isLoading: false,
          personalDetails: personalDetail,
          msg: '',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          msg: 'Error occurs while fetching personal details',
        ),
      );
    }
  }

  _searchPersonalInfoList(
    SearchPersonalInfoList event,
    Emitter<PersonalInfoState> emit,
  )async {
    final query = event.query.toLowerCase();
    print('inside bloc $query');
    if (query.isEmpty || query == '' || query == null) {
       final List<PersonalInfoEntity> personalDetail = await usecase
          .fetchPersonalInfoList();
      emit(state.copyWith(personalDetails: personalDetail));
    
    } else {
      final List<PersonalInfoEntity> personalDetail = await usecase
          .fetchPersonalInfoList();
      final filterPersonalDeatils = personalDetail.where((article) {
        final firstName = article.firstName?.toLowerCase() ?? '';

        return firstName.contains(query);
      }).toList();
      emit(state.copyWith(personalDetails: filterPersonalDeatils));
    }
  }
}
