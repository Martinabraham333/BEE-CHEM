import 'package:flutter/material.dart';
import 'package:personal_info_manager/core/app_colors.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_button.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_form_textfiled.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_text.dart';
import 'package:personal_info_manager/core/custom_widgets/custom_textfield.dart';
import 'package:personal_info_manager/core/media_query_values.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final height = SizeConfig.screenHeight;
    final width = SizeConfig.screenWidth;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
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
                          fontSize: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),
              Center(
                child: CustomText(
                  text: 'Welcome back!',
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: CustomText(
                  text: 'Login To Your Account',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 40),

              Center(
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomFormTextField(
                        widthSize: width * 0.8,
                        icon: Icons.email,
                        controller: _emailController,
                        hintText: 'Email Address',
                        validator: (value) {
                          return value!;
                        },
                      ),
                      SizedBox(height: 20),
                      CustomFormTextField(
                        widthSize: width * 0.8,
                        icon: Icons.lock,
                        controller: _passwordController,
                        hintText: 'Password',
                        validator: (value) {
                          return value!;
                        },
                      ),

                      SizedBox(height: 20),

                      Center(
                        child: SizedBox(
                          width: width * 0.8,
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
                                    text: 'Remember Me',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),

                              CustomText(
                                text: 'FORGOT PASSWORD?',
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      CustomButton(
                        title: 'LOGIN',
                        ontap: () {},
                        width: width * 0.8,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              Center(
                child: CustomText(
                  text: 'OR',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),

              SizedBox(height: 20),
              Center(
                child: CustomText(
                  text: "Don't have an account? REGISTER",
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
