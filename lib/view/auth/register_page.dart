// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/widget/space.dart';
import 'package:flutter/material.dart';
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColors,
      body: Stack(
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
                          controller: emailController,
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
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DashboardPage()),
                                (route) => false);
                          },
                          label: "Login",
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
                              "Don’t have an Account ? ",
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
                                      return Container();
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                "Sign Up",
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
                  const SizedBox(
                    height: 30.0,
                  ),
                  if (MediaQuery.of(context).viewInsets.bottom == 0)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 26.0,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045457/ikiyaxwxuj616fxbqive.png",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 26.0,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045460/fdggcuj6chrzspuog9qa.png",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
