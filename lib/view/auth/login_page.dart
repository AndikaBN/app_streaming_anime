import 'package:app_stream_anime/admin/view/admin_home_page.dart';
import 'package:app_stream_anime/constant/colors.dart';
import 'package:app_stream_anime/widget/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constant/fonts.dart';
import '../../data/localDatasource/auth_local_datasource.dart';
import '../../widget/button.dart';
import '../../widget/custom_text_field.dart';
import '../dashboard_page.dart';
import 'bloc/login/login_bloc.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColors,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
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
                            label: "email",
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
                              label: "password",
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
                          BlocListener<LoginBloc, LoginState>(
                            listener: (context, state) {
                              state.maybeWhen(
                                orElse: () {},
                                success: (authResponseModel) {
                                  AuthLocalDatasource()
                                      .saveAuthData(authResponseModel);
                                  // Periksa peran pengguna
                                  if (authResponseModel.user!.role == 'admin') {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AdminHomePage(),
                                      ),
                                    );
                                  } else {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DashboardPage(),
                                      ),
                                    );
                                  }
                                },
                                error: (message) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(message),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                },
                              );
                            },
                            child: BlocBuilder<LoginBloc, LoginState>(
                              builder: (context, state) {
                                return state.maybeWhen(orElse: () {
                                  return Button.filled(
                                    onPressed: () {
                                      if (emailController.text.isEmpty ||
                                          passwordController.text.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Email dan password tidak boleh kosong'),
                                            backgroundColor: Colors.red,
                                          ),
                                        );
                                      } else {
                                        context.read<LoginBloc>().add(
                                              LoginEvent.login(
                                                email: emailController.text,
                                                password:
                                                    passwordController.text,
                                              ),
                                            );
                                      }
                                    },
                                    label: "Login",
                                    width: double.infinity,
                                    height: 50.0,
                                    borderRadius: 16.0,
                                    icon: null,
                                  );
                                }, loading: () {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                });
                              },
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                "Belum punya akun ? ",
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
                                        return const RegisterPage();
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
