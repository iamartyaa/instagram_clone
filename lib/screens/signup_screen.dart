import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';
import '../widgets/test_field_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(),
              flex: 1,
            ),
            SvgPicture.asset(
              'assets/logo.svg',
              color: primaryColor,
              height: 64,
            ),
            const SizedBox(
              height: 34,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 54,
                  backgroundImage: AssetImage('assets/photo.jpg'),
                ),
                Positioned(
                  bottom: -10,
                  left: 65,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_a_photo),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
              textEditingController: _usernameController,
              hintText: 'Enter your username',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
              textEditingController: _emailController,
              hintText: 'Enter your email',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
              textEditingController: _passwordController,
              hintText: 'Enter your password',
              isPass: true,
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
              textEditingController: _bioController,
              hintText: 'Enter your bio',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              decoration: const ShapeDecoration(
                  color: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  )),
              child: const Text('Log in'),
            ),
            const SizedBox(
              height: 12,
            ),
            Flexible(
              flex: 1,
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text("Don't have an account?"),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      " Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      )),
    );
  }
}
