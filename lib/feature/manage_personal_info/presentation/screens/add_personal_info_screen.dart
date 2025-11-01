import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_info_manager/core/app_colors.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_button.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_form_textfield.dart';
import 'package:personal_info_manager/core/custom_widgets/login_form_textfiled.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_text.dart';
import 'package:personal_info_manager/core/media_query_values.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/role_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/presentation/bloc/personal_info_bloc.dart';
import 'package:personal_info_manager/feature/manage_personal_info/presentation/screens/personal_info_list_screen.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class AddPersonalInfoScreen extends StatefulWidget {
  const AddPersonalInfoScreen({super.key});

  @override
  State<AddPersonalInfoScreen> createState() => _AddPersonalInfoScreenState();
}

class _AddPersonalInfoScreenState extends State<AddPersonalInfoScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController suburbController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController postCodeController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController additionalNotesController =
      TextEditingController();

  bool status = true;
  final _formKey = GlobalKey<FormState>();
  var roleId;
  @override
  void initState() {
    context.read<PersonalInfoBloc>().add(PersonalInfoEvent.fetchRoleDetails());
    super.initState();
  }

  void clearAll() {
    fullNameController.clear();
    addressController.clear();
    suburbController.clear();
    stateController.clear();
    postCodeController.clear();
    contactNumberController.clear();
    additionalNotesController.clear();
    setState(() {
      status = true;
    });
  }

  @override
  void dispose() {
    fullNameController.dispose();
    addressController.dispose();
    suburbController.dispose();
    stateController.dispose();
    postCodeController.dispose();
    contactNumberController.dispose();
    additionalNotesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final height = SizeConfig.screenHeight;
    final width = SizeConfig.screenWidth;
    return BlocConsumer<PersonalInfoBloc, PersonalInfoState>(
      listener: (context, state) {
        if (state.isLoading == false && state.msg == 'success') {
          QuickAlert.show(
            context: context,
            confirmBtnColor: AppColors.primaryColor,
            type: QuickAlertType.success,
            text: 'Data Saved Successfully!',
          );
          clearAll();
        }
        if (state.isLoading == false && state.msg == 'failure') {
          QuickAlert.show(
            context: context,
            confirmBtnColor: AppColors.primaryColor,
            type: QuickAlertType.error,
            text: 'Unable to save your data',
          );
        }
      },
      builder: (context, state) {
        return state.isLoading == true
                ? Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  )
                : SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  _headerSection(width, height),
                  _formSection(
                    width,
                    height,
                    state.roleDetails,
                    state.isRoleCheck,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Form _formSection(
    width,
    height,
    List<RoleEntity> roleDetails,
    List<Map<String, dynamic>> isRoleCheck,
  ) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: CustomFormTextfield(
              controller: fullNameController,
              hintText: 'Please Type',
              title: 'Full Name',
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Full name is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: CustomFormTextfield(
              controller: addressController,
              hintText: 'Please Type',
              title: 'Address',
              icon: Icons.location_on,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Address is required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: CustomFormTextfield(
              controller: suburbController,
              hintText: 'Please Type',
              title: 'Suburb',
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Suburb is required';
                }
                return null;
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 15,
                  ),
                  child: CustomFormTextfield(
                    controller: stateController,
                    hintText: 'Please Type',
                    title: 'State',
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'State is required';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 15,
                  ),
                  child: CustomFormTextfield(
                    controller: postCodeController,
                    hintText: 'Please Type',
                    title: 'Post Code',
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Post code is required';
                      } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return 'Enter a valid number';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: CustomFormTextfield(
              controller: contactNumberController,
              hintText: 'Please Type',
              title: 'Contact Number',
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Contact number is required';
                } else if (!RegExp(r'^[0-9]{8,15}$').hasMatch(value)) {
                  return 'Enter a valid contact number';
                }
                return null;
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: 'Role', fontSize: 12),
                const SizedBox(height: 10),

                ListView.builder(
                  itemCount: roleDetails.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Checkbox(
                          value: isRoleCheck[index]['isChecked'],
                          onChanged: (value) {
                            context.read<PersonalInfoBloc>().add(
                              PersonalInfoEvent.rollCheckBox(index),
                            );
                            roleId = "${isRoleCheck[index]['id'].toString()}";
                          },
                        ),
                        Expanded(
                          child: CustomText(
                            text: roleDetails[index].role,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: CustomFormTextfield(
              maxLines: 5,
              controller: additionalNotesController,
              hintText: 'Please Type',
              title: 'Additional Notes',
              validator: (value) {
                
                return null;
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Status', fontSize: 14),
                Switch(
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value;
                    });
                  },
                  activeColor: Colors.white,
                  activeTrackColor: Colors.green,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.grey.shade400,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomButton(
                    title: 'Cancel',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PersonalInfoListScreen(),
                        ),
                      );
                    },
                    backGroundColor: Colors.grey,
                  ),
                ),
                SizedBox(width: 100),
                Expanded(
                  child: CustomButton(
                    title: 'Save',
                    ontap: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<PersonalInfoBloc>().add(
                          PersonalInfoEvent.saveDetails({
                            "first_name": fullNameController.text.trim(),
                            "address": addressController.text.trim(),
                            "suburb": suburbController.text.trim(),
                            "state": stateController.text.trim(),
                            "postcode": postCodeController.text.trim(),
                            "contact_number": contactNumberController.text
                                .trim(),
                            "latitude": "45.56.56.0",
                            "longitude": "55.54.32.56",
                            "country": "Australia",
                            "role_ids": "$roleId",
                            "status": status == true ? "1" : "0",
                          }),
                        );
                      }
                    },
                    backGroundColor: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Stack _headerSection(width, height) {
    return Stack(
      children: [
        Image.asset(
          'assets/frame_2.png',
          width: double.infinity,
          fit: BoxFit.cover,
          height: height * 0.3,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.logout, size: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.1, left: width * 0.1),
          child: Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(Icons.grid_view, size: 20),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.1, right: width * 0.1),
          child: Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 20),
            ),
          ),
        ),

        Center(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.2),
            child: CustomText(
              text: 'Personal Details ',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
