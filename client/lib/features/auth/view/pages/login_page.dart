import 'package:flutter/material.dart';
import 'package:musique/core/theme/app_palette.dart';
import 'package:musique/features/auth/view/widgets/auth_gradient_buttton.dart';
import 'package:musique/features/auth/view/widgets/custom_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //controller for text fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  //disposing controllers
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
    formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign In.',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomField(hintt: "Email", controller: _emailController),
                const SizedBox(
                  height: 15,
                ),
                CustomField(
                    hintt: "Password",
                    controller: _passwordController,
                    isPassword: true),
                const SizedBox(
                  height: 20,
                ),
                AuthGradientButton(
                  onTap: () {},
                  name: "Sign In",
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(
                        text: "Don't have an account? ",
                        style: Theme.of(context).textTheme.titleMedium,
                        children: const [
                      TextSpan(
                        text: 'Sign Un',
                        style: TextStyle(
                            color: Pallete.gradient2,
                            fontWeight: FontWeight.bold),
                      )
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}