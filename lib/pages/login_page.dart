import "package:flutter/material.dart";
import "package:netapp/components/my_button.dart";
import "package:netapp/components/my_textfield.dart";
import "package:netapp/pages/home_page.dart";

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() {
    //navigate to home page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Image.asset(
                  "lib/images/logo.png",
                  height: 140,
                ),
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  " Customer Inspired, Technology Driven",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              // email field
              MyTextField(
                controller: emailController,
                hintText: "Email/Username",
                obscureText: false,
              ),

              const SizedBox(height: 10),

              MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),

              // password field

              const SizedBox(height: 10),
              MyButton(
                text: "SIGN IN",
                onTap: login,
              ),

              // login button

              // not a member? register here
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Not a member? ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 34, 30, 30),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Register here",
                      style: TextStyle(
                        color: Color.fromARGB(255, 22, 23, 24),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
