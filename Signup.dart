import 'package:flutter/material.dart';

import 'AuthService.dart';
import 'loginpage.dart';

class SignUpPage extends StatefulWidget {


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool changeObscureText = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordControllers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // title: Text(widget.userName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
                child: Text('Sign Up',
                    style: TextStyle(fontSize: 25, color: Colors.blue))),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                prefixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                hintText: 'Username',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                prefixIcon: Icon(Icons.mail),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                hintText: 'Email',
              ),
            ),


            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordController,
              obscureText: changeObscureText,
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeObscureText = !changeObscureText;
                      });


                      child:Icon(Icons.remove_red_eye_outlined);
                    }),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                hintText: 'Password',
              ),

            ),

            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () async {
                String result =await AuthService().signUp(emailController.text,passwordController.text);
                if(result=="Success"){
                  print("Signup");

                }else{
                  print("Failed");
                }
              }, child: Text("Sign Up"),





            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                }
              },
              child: const Text(
                "Already have an account? Log In",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}