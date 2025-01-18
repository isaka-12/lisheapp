import 'package:flutter/material.dart';
import 'package:lisheapp/pages/signup_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
            alignment: Alignment.center, // Centers content vertically
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Shrinks the column vertically
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    Text(
                      "LISHE",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome!",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Username or Phone Number",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        // Handle "Forgot Password?" action here
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
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
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not a member?",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignupPage()));
                            // redirect to register page
                          },
                          child: Text(
                            "Register Now",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Or continue with",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(18)),
                          child: Image.asset(
                            'assets/images/google.png',
                            height: 16,
                            width: 16,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(18)),
                          child:
                              Icon(Icons.apple, color: Colors.white, size: 24),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(18)),
                          child: Icon(Icons.facebook,
                              color: Colors.white, size: 24),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
