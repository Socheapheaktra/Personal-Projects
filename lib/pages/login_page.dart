import 'package:ecommerce_app/components/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Logo
              const Icon(
                Icons.shopping_cart_checkout,
                size: 100,
              ),
              // Spacing
              const SizedBox(height: 50),
              // Email TextInput
              CustomTextField(
                hintText: "Email",
                controller: emailController,
                obscureText: false,
              ),
              // Spacing
              const SizedBox(height: 10),
              // Password TextInput
              CustomTextField(
                hintText: "Password",
                controller: emailController,
                obscureText: true,
              ),
              // Forget Password Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Spacing
              const SizedBox(height: 10),
              // Login Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(5),
                    splashColor: Colors.white.withOpacity(0.4),
                    highlightColor: Colors.black.withOpacity(0.5),
                    onTap: () {},
                    child: Ink(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 7,
                              spreadRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ]),
                      child: const Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              // Register Account TextButton
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Register here"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
