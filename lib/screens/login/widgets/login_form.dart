import 'package:firebase/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Email'),
          SizedBox(
            width: SizeConfig.widthSize(context, 80),
            child: TextField(
              controller: emailController,
              textInputAction: TextInputAction.next,
            ),
          ),
          const Text('Mật khẩu'),
          SizedBox(
            width: SizeConfig.widthSize(context, 80),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              textInputAction: TextInputAction.done,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: SizeConfig.widthSize(context, 50),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Theme.of(context).primaryColor;
                    }
                    return Colors.black; // Use the component's default.
                  },
                ),
              ),
              onPressed: () {},
              child: Text(
                'ĐĂNG NHẬP',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
