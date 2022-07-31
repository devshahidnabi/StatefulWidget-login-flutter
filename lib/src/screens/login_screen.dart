import 'package:flutter/material.dart';
import 'package:login_stateful/src/mixins/validation_mixins.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child:Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: const EdgeInsets.only(top: 20.0),),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField()  {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email Address',
        hintText: 'mail@example.com',
      ),
      validator: validateEmail,
      onSaved: (value)  {
        email = value!;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      validator: ValidatePassword,
      onSaved: (value)  {
        password = value!;
      },
    );
  }

  Widget submitButton()  {
    return RaisedButton(
      color: Colors.yellowAccent,
      child: const Text('Submit'),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState?.save();
          print('Time to post $email and $password to my API');
        }
      },
    );
  }
}
