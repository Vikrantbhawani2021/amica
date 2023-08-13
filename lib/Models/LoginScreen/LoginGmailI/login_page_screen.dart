import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../Utils/BottomNavigation/bottom_navigation.dart';
import '../../../Utils/Constants/constans_assets.dart';
import '../../../Utils/Constants/constants_colors.dart';
import '../../../Utils/Constants/routes.dart';
import '../../../Utils/Wdgets/elevated_button.dart';
import '../../../Utils/Wdgets/textfield.dart';
import 'package:get/get.dart';

class LoginInPageGmail extends StatefulWidget {
  const LoginInPageGmail({Key? key}) : super(key: key);

  @override
  State<LoginInPageGmail> createState() => _LoginInPageGmailState();
}

class _LoginInPageGmailState extends State<LoginInPageGmail> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool obscureText = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _body()
            ],
          ),
        ),
      ),
    );
  }
  Widget _body(){
    return Form(
      key: _formKey, child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset('assets/imagelotte.json',width: 200,height: 200),
        Row(
          children: const [
            Text(
              "Login to your Account",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        MyTextFormField(
          // controller: controller.emailController,
          hintText: "Mobile Number",
          keyboardType: TextInputType.number,
          prefixIcon: SvgPicture.asset(Images.svgEmail),
          validator: (v) {
            // if (v!.isEmpty) {
            //   return "Required Field";
            // } else if (!v.isEmail) {
            //   return "Enter correct email id";
            // }
            return null;
          },
        ),
        const SizedBox(height: 20),
        MyTextFormField(
          // controller: controller.passwordController,
          hintText: "Password",
          obscureText: obscureText,
          prefixIcon: SvgPicture.asset(Images.svgLock),
          suffixIcon: IconButton(
            onPressed: () => setState(() {
              obscureText = !obscureText;
            }),
            icon: obscureText == true
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
          ),
          validator: (v) {
            if (v!.isEmpty) {
              return "Required Field";
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        MyTextFormField(
          // controller: controller.passwordController,
          hintText: "Library Id",
          obscureText: obscureText,
          keyboardType: TextInputType.number,
          prefixIcon: Icon(Icons.verified_user),
          // suffixIcon: IconButton(
          //   onPressed: () => setState(() {
          //     obscureText = !obscureText;
          //   }),
          //   icon: obscureText == true
          //       ? const Icon(Icons.visibility)
          //       : const Icon(Icons.visibility_off),
          // ),
          validator: (v) {
            if (v!.isEmpty) {
              return "Required Field";
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create an account?",
                style: TextStyle(color: ColorConst.greyTextColor),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                child: Text(
                  "Sign up",
                  style: TextStyle(color: ColorConst.buttonColor),
                ),
                onTap: () => Get.toNamed(RoutesName.signUpPage),
              ),
            ],
          ),
        ]),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Get.toNamed(RoutesName.forgotPassPage);
          },
          child: Text(
            "Forgot the password?",
            style: TextStyle(color: ColorConst.buttonColor),
          ),
        ),
        const SizedBox(height: 20),
        MyElevatedButton(
          // isLoading: controller.isLoading.value,
          label: "Sign in",
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavigation()));
            // Get.offAndToNamed(RoutesName.onboardingPages);
            // if (_formKey.currentState!.validate()) {
            //   // controller.emailLogin();
            // }
          },
        ),
      ],
    ),
    );
  }
}
