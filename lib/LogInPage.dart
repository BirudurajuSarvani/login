import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sarvani_task/HomePage.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({ Key? key }) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  final _formkey = GlobalKey<FormState>();
  var email = '';
  var password = '';
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SingleChildScrollView(
       child: Container(
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             children: [
               SizedBox(height: 35,),
               Align(
                 alignment: Alignment.topLeft,
                 child: Text("LOGIN",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 22,
                 ),
                 )),
               SizedBox(height: 46,),
               Align(
                 alignment: Alignment.topLeft,
                 child: Text("Email",
                 style: TextStyle(
                   fontSize: 18
                 ),
                 )),
                 SizedBox(height: 5,),
               TextFormField(
                keyboardType: TextInputType.text,
                 decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                           ),
                                ),
                              validator: (value) {
                              if (value == null || value.isEmpty) {
                          return 'Please enter your email id';
                        }
                        if(!RegExp("^[a-zA-z0-0+_.]+@[a-zA-z0-0+_9,_]+.[a-z]")
                        .hasMatch(value)){
                          return 'Please enter valid email';
                        }
                      return null;
                    },
                      onChanged: (value) {
                    email = value;
                 },
                ),
                SizedBox(height: 35,),
                 Align(
                   alignment: Alignment.topLeft,
                   child: Text("Password",
                   style: TextStyle(
                   fontSize: 18
                 ),
                   )),
                   SizedBox(height: 5,),
               TextFormField(
                keyboardType: TextInputType.text,
                 decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderSide: const BorderSide(),
                           ),
                                ),
                              validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                          return 'Please enter your password';
                        }
                        if(value.trim().length<6){
                          return 'Password must be 6 characters in length';
                        }
                      return null;
                    },
                      onChanged: (value) {
                    password= value;
                 },
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,  
                      activeColor: Colors.pinkAccent,  
                              value: this.value,
                              onChanged: (bool ) {
                                setState(() {
                                  value = !value;
                                });
                              },
                            ),
                            Text("Remember me?")
                  ],
                ),
                SizedBox(height: 25,),
                SizedBox(
                  height: 50,
                  width: 550,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.white,
                      primary: Colors.pinkAccent,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));  
                     // signin(email, password);
                      if (_formkey.currentState!.validate()) {
                        print("successful");
                         

                        return;
                      } else {
                        print("UnSuccessfull");
                      }
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 22,),
                Align(
                  alignment: Alignment.topRight,
                  child: Text('Forgot Password?')),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        height: 1,
                        width: 162,
                        color: Colors.grey,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
                        child: Center(child: Text("OR"))),
                      Container(
                        height: 1,
                        width: 162,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.redAccent.shade700,
                    width: 3,
                  )),
                        child: Center(child: Text("G",
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent.shade700,
                          fontSize: 22
                        ) ,
                        ),
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.deepPurple.shade900,
                    width: 3,
                  )),
                        child: Center(child: Text("f",
                        style:TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple.shade900,
                        ) ,
                        ),
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.lightBlue.shade900,
                    width: 3,
                  )),
                        child: Center(child: Text("in",
                        style:TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue[900],
                        ) ,
                        ),
                        ),
                        ),
                    ],
                  ),
                  SizedBox(height: 38,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Need an account?"),
                  TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => SignUpPage()));
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
             ],
           ),
         ),
       ),
      ),
      
    );
  }
}

//   signin(
//   email,
//   password,
// ) async {
//   try {
//     var response =
//         await http.post(Uri.parse('https://api.coindesk.com/v1/bpi/currentprice.json'),
//             headers: <String, String>{
//               'Content-Type': 'application/json; charset=UTF-8',
//             },
//             body: jsonEncode(<String, String>{
//               'email': email,
//               'password': password,
//             }));
//     print(response.body);
//     Map<String, dynamic> user = jsonDecode(response.body);
//     var name = user['message'];
//     var error = user['error'];

//     if (response.statusCode == 200) {
//       Fluttertoast.showToast(
//           msg: name,
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 3,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//           fontSize: 16.0);
//       Get.to(() => const HomePage());
//     } else {
//       Fluttertoast.showToast(
//           msg: error,
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 3,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//           fontSize: 16.0);
//     }
//   } catch (e) {
//     print(e);
//   }
// }


 

