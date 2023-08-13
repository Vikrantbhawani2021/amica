import 'package:flutter/material.dart';

import '../../../Utils/Constants/constans_assets.dart';
import '../../../Utils/Constants/constants_colors.dart';

import '../../../Utils/Wdgets/elevated_button.dart';
import '../../../Utils/Wdgets/textfield.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../Utils/Constants/routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool obscureText = true;

  bool value = false;
  String countryCode = "91";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _body(),
              _footer()
            ],
          ),
        ),
      ),
    );
  }
  Widget _body() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Images.loginFrame,
            height: 100,
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              Text(
                "Create your Account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          MyTextFormField(
            // controller: controller.fullnameController,
            hintText: " Full Name",
            prefixIcon: const Icon(
              Icons.person,
              size: 22,
            ),
          ),
          const SizedBox(height: 10),
          MyTextFormField(
            // controller: controller.fullnameController,
            hintText: "Address",
            prefixIcon: const Icon(
              Icons.local_library,
              size: 22,
            ),
          ),
          const SizedBox(height: 10),
          MyTextFormField(
            // controller: controller.fullnameController,
            keyboardType: TextInputType.number,
            hintText: "Library ID",
            prefixIcon: const Icon(
              Icons.person,
              size: 22,
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          MyTextFormField(
            // controller: controller.emailController,
            hintText: "Email",
            prefixIcon: SvgPicture.asset(
              Images.svgEmail,
            ),
            validator: (value) {
              //   if (value!.isEmail == false) {
              //     return "Enter correct email";
              //   }
              //   return null;
              // },
            }
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                  child: MyTextFormField(
                    hintText: "+$countryCode",
                    readOnly: true,
                    onTap: () {
                      // (
                      //     context: context,
                      //     favorite: <String>['IN'],
                      //     showPhoneCode: true,
                      //     onSelect: (c) {
                      //       setState(() {
                      //         countryCode = c.phoneCode;
                      //         controller.codeController.text = c.phoneCode;
                      //       });
                      //     });showCountryPicker
                    },
                  )),
              const SizedBox(width: 5),
              Expanded(
                flex: 3,
                child: MyTextFormField(
                  // controller: controller.phoneNumberController,
                  hintText: "Phone",
                  keyboardType: TextInputType.phone,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          MyTextFormField(
            // controller: controller.passwordController,
            hintText: "Password",
            obscureText: obscureText,
            prefixIcon: SvgPicture.asset(Images.svgLock),
            suffixIcon: GestureDetector(
              onTap: () => setState(() {
                obscureText = !obscureText;
              }),
              child: obscureText == false
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter a password";
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          MyTextFormField(
            // controller: controller.confirmPassController,
            hintText: "Confirm Password",
            obscureText: obscureText,
            prefixIcon: SvgPicture.asset(Images.svgLock),
            suffixIcon: GestureDetector(
              onTap: () => setState(() {
                obscureText = !obscureText;
              }),
              child: obscureText == false
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
            ),
            validator: (value) {
              // if (value!.isEmpty) {
              //   return "Enter a password";
              // } else if (value != controller.passwordController.text) {
              //   return "Password doesn't match";
              // } else {
              //   return null;
              // }
            },
          ),
          const SizedBox(height: 10),
          MyElevatedButton(
            // isLoading: controller.isLoading.value,
            label: "Sign up",
            onPressed: () {
              // if (controller.phoneNumberController.text.isEmpty ||
              //     controller.phoneNumberController.text.length < 10) {
              //   SnackBarService.showSnackBar(
              //       context, "Pease Enter correct mobile number");
              // } else if (_formKey.currentState!.validate()) {
              //   if (controller.codeController.text.isEmpty) {
              //     controller.codeController.text = "91";
              //   }
              //   controller.phonenumber =
              //   "+${controller.codeController.text}${controller.phoneNumberController.text}";
              //   Get.to(() => const SelectCategoryPage());
              // }
            },
          ),
        ],
      ),
    );
  }
  Widget _footer() {
    return Column(
      children: [
        const SizedBox(height: 20),
        _divider(),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: TextStyle(color: ColorConst.greyTextColor),
            ),
            const SizedBox(width: 5),
            InkWell(
              onTap: () => Get.offAndToNamed(RoutesName.loginInPageEmail),
              child: Text(
                "Sign in",
                style: TextStyle(color: ColorConst.buttonColor),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        // GetBuilder<SignupLandingController>(
        //   init: SignupLandingController(),
        //   initState: (_) {},
        //   builder: (controller) {

        //   },
        // ),
      ],
    );
  }
  Widget _divider() {
    return Row(
      children: const [
        Expanded(
            child: Divider(
              thickness: 2,
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("or"),
        ),
        Expanded(
            child: Divider(
              thickness: 2,
            )),
      ],
    );
  }
}
