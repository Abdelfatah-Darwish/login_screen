// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:login_page/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passWordController = TextEditingController();

  void printLatestValue() {
    final text = emailController.text;
    print('Email Address : $text ${text.characters.length}');
  }

  bool passwordVisible = false;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    lable: 'Email Address',
                    prefix: Icons.email,
                    validate: (s) {
                      if (s!.isEmpty) {
                        return 'email address must not be empty';
                      }
                      return null;
                    },
                    onChange: (value) {
                      print(emailController.text);
                    },
                    onSubmit: (value) {
                      print(emailController.text);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                    controller: passWordController,
                    keyboardType: TextInputType.number,
                    lable: 'Password',
                    prefix: Icons.lock,
                    validate: (s) {
                      if (s!.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                    onChange: (value) {
                      print(passWordController.text);
                    },
                    onSubmit: (value) {
                      print(passWordController.text);
                    },
                    ispassword: !passwordVisible,
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                    radius: 10,
                    isUpperCase: false,
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passWordController.text);
                      }
                    },
                    text: 'Login',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account? '),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Register Now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
