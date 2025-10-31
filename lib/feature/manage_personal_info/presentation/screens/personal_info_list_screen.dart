import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_info_manager/core/app_colors.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_text.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_textfield.dart';
import 'package:personal_info_manager/core/media_query_values.dart';
import 'package:personal_info_manager/feature/manage_personal_info/presentation/bloc/personal_info_bloc.dart';

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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _headerSection(width, height),
            SizedBox(height: 20),
            _searchSection(width, height),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Text("data");
                },
              ),
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
            padding: const EdgeInsets.only(left: 50),
            child: CustomTextField(
              controller: _serachController,
              hintText: 'Search...',
            ),
          ),
        ),
        SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              radius: 30,
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
            child: Icon(Icons.logout, size: 30),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.1, left: width * 0.1),
          child: Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(Icons.grid_view, size: 40),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.1, right: width * 0.1),
          child: Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40),
            ),
          ),
        ),

        Center(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.18),
            child: CustomText(
              text: 'Personal Details List',
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
      ],
    );
  }
}
