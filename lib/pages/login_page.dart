import 'package:chatapp/component/my_button.dart';
import 'package:chatapp/component/my_text_field.dart';
import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  final void Function()? onTap;
  const Loginpage({super.key, required this.onTap});


  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final emailController=TextEditingController();
  final passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Icon(Icons.message,
                  size: 100,
                    color: Colors.grey.shade800,
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Welcome back you've been missed",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 25,
                ),
                MyTextField(
                    controller:emailController,
                    hintText: 'Email',
                    obsecureText: false
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller:passwordController,
                    hintText: 'Password',
                    obsecureText: true
                ),
              const SizedBox(
                  height: 25,
                ),
                MyButton(onTap: (){},text: "sign In"
                    ""),
               const SizedBox(
                  height: 50,
                ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("NOt a member"),
                     const SizedBox(width: 4,),
                    GestureDetector(
                      onTap: widget.onTap,
                        child: const Text("Register now",
                          style: TextStyle(fontWeight: FontWeight.bold),))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
