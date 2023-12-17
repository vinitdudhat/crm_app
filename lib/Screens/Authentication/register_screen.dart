

import 'package:crm_app/Common/constValidation.dart';
import 'package:crm_app/Screens/Authentication/login_screen.dart';
import 'package:crm_app/Screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Common/constColor.dart';
import '../../Common/constMessage.dart';
import '../../Controller/register_controller.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterController registerController = Get.put(RegisterController());
  bool _obscureText = true;
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.02),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Create A New Account",
                    style: TextStyle(
                        fontSize: 30,
                        color: ConstColor.black,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: deviceHeight * 0.01),
                    child: Text(
                      "Please Fil In The Form To Continue",
                      style:
                      TextStyle(color: ConstColor.black.withOpacity(0.5)),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: deviceHeight * 0.02),
                    child: TextFormField(
                      controller: registerController.fnameController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            const BorderSide(color: ConstColor.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: ConstColor.black,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            const BorderSide(color: ConstColor.black)),
                        hintText: "Enter your First Name",
                        hintStyle: const TextStyle(
                            color: ConstColor.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        labelText: "First Name",
                        labelStyle: const TextStyle(
                          color: ConstColor.black,
                        ),
                        prefixIcon: const Icon(CupertinoIcons.person,
                            color: ConstColor.black),
                      ),
                      validator: (myvalue) {
                        if (myvalue!.isEmpty) {
                          return "First Name is Required";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: deviceHeight * 0.02),
                    child: TextFormField(
                      controller: registerController.lnameController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            const BorderSide(color: ConstColor.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: ConstColor.black,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            const BorderSide(color: ConstColor.black)),
                        hintText: "Enter your Last Name",
                        hintStyle: const TextStyle(
                            color: ConstColor.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        labelText: "Last Name",
                        labelStyle: const TextStyle(
                          color: ConstColor.black,
                        ),
                        prefixIcon: Icon(CupertinoIcons.person,
                            color: ConstColor.black),
                      ),
                      validator: (myvalue) {
                        if (myvalue!.isEmpty) {
                          return "Last Name is Required";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: deviceHeight * 0.02),
                    child: TextFormField(
                      controller: registerController.emailController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            const BorderSide(color: ConstColor.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: ConstColor.black,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
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
                      controller: registerController.passwordController,
                      obscureText: _obscureText,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: ConstColor.black,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: ConstColor.black,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
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
                            if(registerController.fnameController.text.isEmpty){
                              ConstMessage()
                                  .snackBar("Please Fill First Name", "");
                            }else if(registerController.lnameController.text.isEmpty){
                              ConstMessage()
                                  .snackBar("Please Fill Last Name", "");
                            }else if(registerController.emailController.text.isEmpty){
                              ConstMessage()
                                  .snackBar("Please Fill Email", "");
                            }else if (!constValidation().validateEmail(
                                registerController.emailController.text)){
                              ConstMessage()
                                  .snackBar("Please Fill Valid Email", "");
                            }else if(registerController.passwordController.text.isEmpty){
                              ConstMessage()
                                  .snackBar("Please Fill Password", "");
                            }else{
                              ConstMessage()
                                  .snackBar("Register Successfully!!!", "");
                              Get.to(()=>HomeScreen());
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: ConstColor.primaryColor,
                            onPrimary: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                          child: const Text(
                            "REGISTER",
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
                          "Have an Account ? ",
                          style: TextStyle(
                            color: ConstColor.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.to(()=> LoginScreen());
                            },
                            child: const Text(
                              "SIGN IN",
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
    );
  }
}
