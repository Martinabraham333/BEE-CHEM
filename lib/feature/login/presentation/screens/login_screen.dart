import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_info_manager/core/app_colors.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_button.dart';
import 'package:personal_info_manager/core/custom_widgets/login_form_textfiled.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_text.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_search_textfield.dart';
import 'package:personal_info_manager/core/media_query_values.dart';
import 'package:personal_info_manager/feature/login/presentation/bloc/login_bloc.dart';
import 'package:personal_info_manager/feature/manage_personal_info/presentation/screens/personal_info_list_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool rememberMe = true;
  @override
  void initState() {
    _emailController.text = 'nanesh.g3interactive@gmail.com';
    _passwordController.text = '12345678';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final height = SizeConfig.screenHeight;
    final width = SizeConfig.screenWidth;
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isLoading == false && state.userDetails.isNotEmpty) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PersonalInfoListScreen();
              },
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Login Successful!'),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      child: SafeArea(
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return state.isLoading==true ? Scaffold(
              body: Center(child: CircularProgressIndicator(color:AppColors.primaryColor,),),
            )  : Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _headerSection(height, width),
                    SizedBox(height: 30),
                    _welcomeSection(),
                    SizedBox(height: 40),
                    _formSection(height, width),
                    SizedBox(height: 20),
                    _footerSection(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Stack _headerSection(height, width) {
    return Stack(
      children: [
        Image.asset(
          'assets/frame_1.png',
          width: double.infinity,
          fit: BoxFit.cover,
          height: height * 0.3,
        ),
        Positioned(
          top: height * 0.1,
          left: width * 0.35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/bee.png'),
              SizedBox(height: 20),
              CustomText(
                text: 'BEE CHEM',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _welcomeSection() {
    return Column(
      children: [
        Center(
          child: CustomText(
            text: 'Welcome back!',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: CustomText(
            text: 'Login To Your Account',
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Center _formSection(height, width) {
    return Center(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoginFormTextField(
              widthSize: width * 0.8,
              icon: Icons.email,
              controller: _emailController,
              hintText: 'Email Address',
              validator: (value) {
                final errorMessage = _emailValidation(value!);
                return errorMessage;
              },
            ),
            SizedBox(height: 20),
            LoginFormTextField(
              widthSize: width * 0.8,
              icon: Icons.lock,
              controller: _passwordController,
              hintText: 'Password',
              validator: (value) {
                final errorMessage = _passwordValidation(value!);
                return errorMessage;
              },
            ),

            SizedBox(height: 20),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                        checkColor: Colors.white,
                        activeColor: AppColors.primaryColor,
                      ),
                      CustomText(
                        fontSize: 12,
                        text: 'Remember Me',
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
              
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CustomText(
                       fontSize: 12,
                      text: 'FORGOT PASSWORD?',
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
               
                ],
              ),
            ),

            SizedBox(height: 10),

            CustomButton(
              
              title: 'LOGIN',
              ontap: () {
                print(_formKey.currentState!.validate());
                if (_formKey.currentState!.validate()) {
                  context.read<LoginBloc>().add(
                    LoginEvent.login(
                      email: _emailController.text,
                      password: _passwordController.text,
                    ),
                  );
                } else {
                  log('validation failed');
                }
              },
              width: width * 0.8,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Column _footerSection() {
    return Column(
      children: [
        Center(
          child: CustomText(
            text: 'OR',
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            fontSize: 12,
          ),
        ),

        SizedBox(height: 10),
        Center(
          child: CustomText(
            text: "Don't have an account? REGISTER",
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 12,
          ),
        ),
         SizedBox(height: 10),
      ],
    );
  }

  _emailValidation(String value) {
    const emailRegex = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(emailRegex).hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  _passwordValidation(String value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    } else {
      return null;
    }
  }
}
