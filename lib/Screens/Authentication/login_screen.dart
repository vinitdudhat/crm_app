import 'package:crm_app/Common/constColor.dart';
import 'package:crm_app/Common/constFontStyle.dart';
import 'package:crm_app/Screens/Authentication/register_screen.dart';
import 'package:crm_app/Screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../Common/constMessage.dart';
import '../../Common/constValidation.dart';
import '../../Controller/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController = Get.put(LoginController());
  bool _obscureText = true;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: ()async{
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        body: Form(
          key: formkey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.02),
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Welcome Back!",
                        style: TextStyle(
                            fontSize: 30,
                            color: ConstColor.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: deviceHeight * 0.01),
                        child: Text(
                          "Please Sign in to Your Account",
                          style:
                              TextStyle(color: ConstColor.black.withOpacity(0.5)),
                        ),
                      ),
                      // TextFormField(
                      //   controller: loginController.emailController,
                      //   showCursor: true,
                      //   style: ConstFont().textStyle1,
                      //   // textAlignVertical: TextAlignVertical.top,
                      //   decoration: InputDecoration(
                      //     // prefixIcon: Container(
                      //     //   // width: 20,  // Set the desired width
                      //     //   // height: 20,
                      //     //     padding: EdgeInsets.all(8),
                      //     //     // child: ImageIcon(
                      //     //     //   AssetImage("assets/icon/email.png"),
                      //     //     //   color: ConstColor.hintTextColor,
                      //     //     // )
                      //     //   // Image.asset(
                      //     //   //   'assets/icon/password.png', // Adjust the path as per your directory structure
                      //     //   //   fit: BoxFit.fill,// Set the desired height
                      //     //   // ),
                      //     // ),
                      //     labelStyle: const TextStyle(color: Colors.black),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(5),
                      //       borderSide:
                      //       BorderSide(color: ConstColor.hintTextColor),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(color: ConstColor.primaryColor),
                      //       borderRadius: BorderRadius.all(Radius.circular(3)),
                      //     ),
                      //     border: InputBorder.none,
                      //     // filled: true,
                      //     // isDense: true,
                      //     hintText: "User name",
                      //     hintStyle: ConstFont().subtextStyle1,
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(top: deviceHeight * 0.02),
                        child: TextFormField(
                          controller: loginController.emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: ConstColor.black)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: ConstColor.black,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: ConstColor.black)),
                            hintText: "Enter your Email id",
                            hintStyle: const TextStyle(
                                color: ConstColor.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                            labelText: "Email",
                            labelStyle: const TextStyle(
                              color: ConstColor.black,
                            ),
                            prefixIcon: const Icon(CupertinoIcons.envelope,
                                color: ConstColor.black),
                          ),
                          validator: (myvalue) {
                            if (myvalue!.isEmpty) {
                              return "Email Required";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: deviceHeight * 0.02),
                        child: TextFormField(
                          controller: loginController.passwordController,
                          obscureText: _obscureText,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: ConstColor.black,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: ConstColor.black,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: ConstColor.black,
                                )),
                            hintText: "Enter your Password",
                            hintStyle: const TextStyle(
                                color: ConstColor.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                            labelText: "Password",
                            labelStyle: const TextStyle(
                              color: ConstColor.black,
                            ),
                            prefixIcon: const Icon(CupertinoIcons.lock,
                                color: ConstColor.black),
                            suffixIcon: IconButton(
                              color: Colors.white,
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: ConstColor.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                          validator: (myvalue) {
                            if (myvalue!.isEmpty) {
                              return "Password Requried";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: deviceHeight * 0.04),
                        child: SizedBox(
                          height: deviceHeight * 0.06,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {

                                Get.to(()=> HomeScreen());

                                // if (formkey.currentState!.validate()) {
                                //   if (loginController
                                //       .emailController.text.isEmpty) {
                                //     // ConstMessage()
                                //     //     .snackBar("Please Fill Email", "");
                                //   } else if (!constValidation().validateEmail(
                                //       loginController.emailController.text)) {
                                //     // ConstMessage()
                                //     //     .snackBar("Please enter valid email", "");
                                //   } else if (loginController
                                //       .passwordController.text.isEmpty) {
                                //     // ConstMessage()
                                //     //     .snackBar("Please Fill Password", "");
                                //   }else {
                                //     // ConstMessage()
                                //     //     .snackBar("Login Successfully!!!", "");
                                //     Get.to(()=> HomeScreen());
                                //   }
                                // } else {
                                //   ConstMessage().snackBar(
                                //       "Please Fill All Required Data", "");
                                // }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: ConstColor.primaryColor,
                                onPrimary: Colors.white,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              child: const Text(
                                "SIGN IN",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: deviceHeight * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't Have an Account ? ",
                              style: TextStyle(
                                color: ConstColor.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.to(()=> RegisterScreen());
                                },
                                child: const Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                    color: ConstColor.primaryColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
