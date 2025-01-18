import 'package:flutter/material.dart';
import 'package:lisheapp/widgets/password_field.dart';
import 'package:lisheapp/widgets/text_field_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 8),
                Text(
                  "Create an account to get started",
                  style: TextStyle(
                      color: Color.fromRGBO(113, 114, 122, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 16),
                CustomTextField(
                  label: "Username",
                  hintText: "Username",
                ),
                SizedBox(height: 16),
                CustomTextField(
                  label: "Email Address",
                  hintText: "name@email.com",
                ),
                SizedBox(height: 16),
                CustomPasswordField(
                  label: "Password",
                  hintText: "Create a password",
                ),
                SizedBox(height: 16),
                CustomPasswordField(
                  label: "Confirm Password",
                  hintText: "Confirm password",
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _checked,
                      onChanged: (bool? value) {
                        setState(() {
                          _checked = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: Wrap(
                        children: [
                          Text(
                            "I've read and agree with ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            "the terms and conditions",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            " and the ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Your onPressed logic
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                      padding: WidgetStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
