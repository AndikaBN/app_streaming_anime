// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/view/auth/bloc/register/register_bloc.dart';
import 'package:app_stream_anime/view/auth/login_page.dart';
import 'package:app_stream_anime/widget/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant/colors.dart';
import '../../constant/fonts.dart';
import '../../widget/button.dart';
import '../../widget/custom_text_field.dart';
import '../dashboard_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColors,
      body: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {},
        child: Stack(
          children: [
            SafeArea(
              child: Container(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.infinity,
                          size: 40,
                          shadows: [
                            Shadow(
                              color: Colors.white,
                              offset: Offset(0, 0),
                              blurRadius: 5,
                            ),
                          ],
                          color: AppColors.whiteColors,
                        ),
                        Text(
                          'GodSlayerFlix.',
                          style: textSplash.copyWith(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SpaceHeight(50.0),
                    Form(
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: usernameController,
                            label: "Username",
                            onChanged: (value) {},
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            showLabel: true,
                            prefixIcon: const Icon(
                              Icons.person,
                              color: AppColors.primary,
                            ),
                            suffixIcon: null,
                            readOnly: false,
                          ),
                          const SpaceHeight(20),
                          CustomTextField(
                            controller: emailController,
                            label: "Email",
                            onChanged: (value) {},
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress,
                            showLabel: true,
                            prefixIcon: const Icon(
                              Icons.email,
                              color: AppColors.primary,
                            ),
                            suffixIcon: null,
                            readOnly: false,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: CustomTextField(
                              controller: passwordController,
                              label: "Password",
                              onChanged: (value) {},
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              showLabel: true,
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: AppColors.primary,
                              ),
                              suffixIcon: null,
                              readOnly: false,
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Button.filled(
                            onPressed: () {
                              if (_isFormValid()) {
                                context.read<RegisterBloc>().add(
                                      RegisterEvent.register(
                                        name: usernameController.text,
                                        email: emailController.text,
                                        password: passwordController.text,
                                      ),
                                    );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Login Succes"),
                                  ),
                                );
                                Navigator.pop(context);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Please fill in all fields"),
                                  ),
                                );
                              }
                            },
                            label: "Register",
                            width: double.infinity,
                            height: 50.0,
                            borderRadius: 16.0,
                            icon: null,
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                "Sudah ada akun ? ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const LoginPage();
                                      },
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _isFormValid() {
    return usernameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }
}
