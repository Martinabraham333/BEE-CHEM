import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_info_manager/core/app_colors.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_text.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_search_textfield.dart';
import 'package:personal_info_manager/core/media_query_values.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/personal_info_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/presentation/bloc/personal_info_bloc.dart';
import 'package:personal_info_manager/feature/manage_personal_info/presentation/screens/add_personal_info_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonalInfoListScreen extends StatefulWidget {
  const PersonalInfoListScreen({super.key});

  @override
  State<PersonalInfoListScreen> createState() => _PersonalInfoListScreenState();
}

class _PersonalInfoListScreenState extends State<PersonalInfoListScreen> {
  TextEditingController _serachController = TextEditingController();

  @override
  void initState() {
    context.read<PersonalInfoBloc>().add(
      PersonalInfoEvent.fetchPersonalInfoList(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final height = SizeConfig.screenHeight;
    final width = SizeConfig.screenWidth;
    return BlocConsumer<PersonalInfoBloc, PersonalInfoState>(
      listener: (context, state) {},
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
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddPersonalInfoScreen();
                    },
                  ),
                );
              },
              child: Icon(Icons.add),
              backgroundColor: AppColors.primaryColor,
              shape: CircleBorder(),
            ),
            body: Column(
              children: [
                _headerSection(width, height),
                SizedBox(height: 20),
                _searchSection(width, height),
                SizedBox(height: 20),
                _listSection(width, height, state.personalDetails),
              ],
            ),
          ),
        );
      },
    );
  }

  Expanded _listSection(width, height, List<PersonalInfoEntity> data) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final personalData = data[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 20,
                          child: Icon(Icons.people),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: width * 0.5,
                                    child: CustomText(
                                      text: personalData.firstName,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  personalData.status == "1"
                                      ? _statusWidget(
                                          const Color.fromARGB(
                                            255,
                                            217,
                                            245,
                                            185,
                                          ),
                                          Colors.green,
                                          'Active',
                                        )
                                      : _statusWidget(
                                          const Color.fromARGB(
                                            255,
                                            242,
                                            212,
                                            212,
                                          ),
                                          Colors.red,
                                          'Inactive',
                                        ),
                                ],
                              ),
                              SizedBox(height: 10),

                              Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.5,
                                    child: Row(
                                      children: [
                                        Icon(Icons.phone, size: 12),
                                        SizedBox(width: 10),
                                        CustomText(
                                          text: personalData.contactNumber,
                                          fontSize: 12,
                                        ),
                                      ],
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      Icon(Icons.person, size: 12),
                                      SizedBox(width: 10),
                                      personalData.roleDetails.isNotEmpty
                                          ? CustomText(
                                              text: personalData
                                                  .roleDetails[0]
                                                  .role,
                                              fontSize: 12,
                                            )
                                          : CustomText(text: ''),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 5),
                    SizedBox(width: width, child: Divider()),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.location_on, size: 12),
                        SizedBox(width: 20),
                        CustomText(text: personalData.address, fontSize: 12),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container _statusWidget(backGroundColor, fontColor, text) {
    return Container(
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: fontColor),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6, top: 3, bottom: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.circle_sharp, color: fontColor, size: 10),
            CustomText(
              text: '$text',
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: fontColor,
            ),
          ],
        ),
      ),
    );
  }

  _searchSection(width, height) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomSearchTextField(
              controller: _serachController,
              hintText: 'Search...',
            ),
          ),
        ),
        SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              context.read<PersonalInfoBloc>().add(
                PersonalInfoEvent.searchPersonalInfoList(
                  _serachController.text,
                ),
              );
            },
            child: CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              radius: 20,
              child: Text('GO'),
            ),
          ),
        ),
      ],
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
            child: GestureDetector(
              onTap: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.clear();
                Navigator.pop(context);
              },
              child: Icon(Icons.logout, size: 20),
            ),
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
              text: 'Personal Details List',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
