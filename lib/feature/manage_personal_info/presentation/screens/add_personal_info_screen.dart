import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_form_textfield.dart';
import 'package:personal_info_manager/core/custom_widgets/login_form_textfiled.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_text.dart';
import 'package:personal_info_manager/core/media_query_values.dart';
import 'package:personal_info_manager/feature/manage_personal_info/domain/entities/role_entity.dart';
import 'package:personal_info_manager/feature/manage_personal_info/presentation/bloc/personal_info_bloc.dart';

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

  bool isColonyOwner = false;
  bool isChemApplicator = false;
  bool isLandOwner = false;

  bool status = true;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    context.read<PersonalInfoBloc>().add(PersonalInfoEvent.fetchRoleDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final height = SizeConfig.screenHeight;
    final width = SizeConfig.screenWidth;
    return BlocConsumer<PersonalInfoBloc, PersonalInfoState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  _headerSection(width, height),
                  _formSection(width, height, state.roleDetails),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Form _formSection(width, height, List<RoleEntity> roleDetails) {
    print(roleDetails);
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
              validator: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: CustomFormTextfield(
              controller: addressController,
              hintText: 'Please Type',
              title: 'Address',
              validator: (value) {},
              icon: Icons.location_on,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: CustomFormTextfield(
              controller: suburbController,
              hintText: 'Please Type',
              title: 'Suburb',
              validator: (value) {},
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
                    validator: (value) {},
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
                    validator: (value) {},
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
              validator: (value) {},
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
Checkbox(value: true, onChanged: (value){}),
Expanded(child: CustomText(text: roleDetails[index].role,fontSize: 12,))
      ],
    );
  },
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
