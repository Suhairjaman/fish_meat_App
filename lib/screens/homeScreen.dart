// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/modelclass.dart';
import 'package:flutter_application_1/screens/signupScreen.dart';
import 'package:motion_toast/motion_toast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

  Dio dio = Dio();
  Future<void> login() async {
    try {
      if (email.text.isEmpty) {
        showErrormessage('Enter user name');
      }
      if (password.text.isEmpty) {
        showErrormessage('Enter  password');
      } else {
        FormData formdata = FormData.fromMap({
          'email':email.text,
          'password':password.text,
          'key':'koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc'
        });
        Response response = await dio.post(
           'https://iroidtechnologies.in/MeatShop/index.php?route=api/login&api_token=',
            data: formdata);
        RegisterDetails registerdetails =
            RegisterDetails.fromJson(response.data);
        if (registerdetails.status == 'success') {
          String? message = registerdetails.message;
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message!)));
        } else {
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
        body: SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 310,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 6, 158, 171),
                ),
                child: Center(
                  child: SizedBox(
                      height: 130,
                      width: 130,
                      child: Image.asset('assets/healthyfish.png')),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment(
              0,
              1.1,
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 30),
              height: 470,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 17, right: 17),
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 11),
                              labelText: 'Username',
                              labelStyle: TextStyle(color: Colors.grey)),
                        )),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 17, right: 17),
                        child: TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye),
                              contentPadding: EdgeInsets.only(top: 11),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.grey)),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 17),
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 6, 158, 171),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 17),
                            child: SizedBox(
                              child: Image.asset('assets/uncheck.png'),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Remember Me',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: SizedBox(
                          height: 40,
                          width: 280,
                          child: ElevatedButton(
                              onPressed: 
                              login,
    
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 6, 158, 171),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              ))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New User ?',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 6, 158, 171),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signupscreen()));
                            },
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 6, 158, 171),
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Image.asset('assets/facebook.png'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          child: Image.asset('assets/gplus.png'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Center(
                      child: Text(
                        'OR',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Center(
                        child: Text(
                      'Guest Login',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 6, 158, 171),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
 
  void showErrormessage(msg) {
    MotionToast.error(
      title: const Text(
        'Login Failed',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      
      description: Text(msg),
      position: MotionToastPosition.bottom,
      barrierColor: Colors.black.withOpacity(0.3),
       
      width: 300,
      height: 80,
      
      dismissable: true,
    ).show(context);
  }

  void showSuccessmessage(msg) {
    MotionToast.success(
      
      title: const Text(
        
        'Login Successfully',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(msg),
      position: MotionToastPosition.bottom,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);
  }
}
