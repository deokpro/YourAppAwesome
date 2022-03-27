import 'package:flutter/material.dart';
import 'package:yourappawesome/page/login/login_component/login_custom_text_form_field.dart';
import 'package:yourappawesome/page/login/login_page/login_home_page.dart';
import 'package:yourappawesome/page/login/login_style/login_size.dart';

class LoginCustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  
  LoginCustomForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const LoginCustomTextFormField(text: "Email"),
          const SizedBox(height: loginMediumGap),
          const LoginCustomTextFormField(text: "Password"),
          const SizedBox(height: loginLargeGap),

          TextButton(onPressed: (){
            if(_formKey.currentState!.validate()) {
              Navigator.pushNamed(context, LoginHomePage.routeName);
            }
          }, child: const Text("Login"))
        ],
      ),
      
    );
  }
}