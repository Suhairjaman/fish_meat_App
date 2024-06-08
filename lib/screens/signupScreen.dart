// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_web_libraries_in_flutter, prefer_const_literals_to_create_immutables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/modelclass.dart';
import 'package:flutter_application_1/screens/displayScreen.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

TextEditingController firstname = TextEditingController();
TextEditingController lastname = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController mobilenumber = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController confrmpassword = TextEditingController();
var api = [
  'https://iroidtechnologies.in/MeatShop/index.php?route=api/register&api_token='
];

// key
var mykey = [
  'koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc'
];

class _SignupscreenState extends State<Signupscreen> {
  Dio dio = Dio();

  Future<void> register() async {
    try {
      if (firstname.text.isEmpty) {
        showErrormessage('Enter first name');
      }
      if (lastname.text.isEmpty) {
        showErrormessage('Enter last name');
      }
      if (email.text.isEmpty) {
        showErrormessage('Enter email');
      }
      if (mobilenumber.text.isEmpty) {
        showErrormessage('Enter mobile');
      }
      if (password.text.isEmpty) {
        showErrormessage('Enter password');
      } else {
        FormData formdata = FormData.fromMap({
          'firstname': firstname.text,
          'lastname': lastname.text,
          'email': email.text,
          'password': password.text,
          'telephone': mobilenumber.text,
          'type': '0',
          'referal_code': '0',
          'key':
              'koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc'
        });
        Response response = await dio.post(
            'https://iroidtechnologies.in/MeatShop/index.php?route=api/register&api_token=',
            data: formdata);
        RegisterDetails registerdetails =
            RegisterDetails.fromJson(response.data);
        if (registerdetails.status == 'success') {
          String? message = registerdetails.message;
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message!)));
        }else{
          showErrormessage(registerdetails.message);
        }
      }
    } catch (error) {
      print('Error:$error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 6, 158, 171),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 15),
            child: TextFormField(
              controller: firstname,
              decoration: InputDecoration(
                label: Text.rich(TextSpan(children: [
                  TextSpan(text: 'First Name'),
                  TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
                ])),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: TextFormField(
              controller: lastname,
              decoration: InputDecoration(
                label: Text.rich(TextSpan(children: [
                  TextSpan(text: 'Last Name'),
                  TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
                ])),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                label: Text.rich(TextSpan(children: [
                  TextSpan(text: 'E-mail'),
                  TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
                ])),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: TextFormField(
              controller: mobilenumber,
              decoration: InputDecoration(
                label: Text.rich(TextSpan(children: [
                  TextSpan(text: ' Mobile Number'),
                  TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
                ])),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: TextFormField(
              controller: password,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                ),
                label: Text.rich(TextSpan(children: [
                  TextSpan(text: 'Password'),
                  TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
                ])),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: TextFormField(
              controller: confrmpassword,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                ),
                label: Text.rich(TextSpan(children: [
                  TextSpan(text: 'Confirm Password'),
                  TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
                ])),
              ),
            ),
          ),
          Expanded(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  // onPressed: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => DisplayScreen()));
                  // },
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: register,
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  void showErrormessage(msg) {
    MotionToast.error(
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(msg),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);
  }

  void showSuccessmessage(msg) {
    MotionToast.success(
      title: const Text(
        'Sucess',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(msg),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);
  }
}
