import 'package:chatapp/component/my_button.dart';
import 'package:chatapp/component/my_text_field.dart';
import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  final void Function()?onTap;
  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  final emailController=TextEditingController();
  final passwordController= TextEditingController();
  final confirmPasswordController=TextEditingController();
  void signUp(){

  }
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
                Text("Let's create an account for you",
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
                MyTextField(
                    controller:confirmPasswordController,
                    hintText: 'Confirm Password',
                    obsecureText: true
                ),
                SizedBox(height: 10,),
                MyButton(onTap:signUp,text: "sign Up"),
                const SizedBox(
                  height: 50,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already a member"),
                    SizedBox(width: 4,),
                    GestureDetector(
                      onTap: widget.onTap,
                        child:const Text("Login now",style: TextStyle(fontWeight: FontWeight.bold),))
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
