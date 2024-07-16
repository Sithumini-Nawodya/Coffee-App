import 'package:coffee_app/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios, size: 20, color: Color.fromRGBO(32, 21, 32, 1),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Login", style: TextStyle(
                        fontSize: 30,
                        color: Color.fromRGBO(32, 21, 32, 1),
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 20,),
                      Text("Login to your account", style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(32, 21, 32, 1)
                      ),),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        makeInput(label: "Email"),
                        makeInput(label: "Password", obscureText: true),

                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40,),
                  child: Container(
                    padding: EdgeInsets.only(left: 4,right: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromRGBO(32, 21, 32, 1),
                        ),
                        top: BorderSide(
                          color: Color.fromRGBO(32, 21, 32, 1),
                        ),
                        left: BorderSide(
                          color: Color.fromRGBO(32, 21, 32, 1),
                        ),
                        right: BorderSide(
                          color: Color.fromRGBO(32, 21, 32, 1),
                        ),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                      },
                      color: Color.fromRGBO(23, 16, 23, 1),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color.fromRGBO(32, 21, 32, 1),
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'LOGIN', style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                      ),
                      ),
                    ),
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?", style: TextStyle(
                        color: Color.fromRGBO(32, 21, 32, 1),
                      ),),
                      Text("Sign Up", style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 18,
                        color: Color.fromRGBO(32, 21, 32, 1),
                      ),),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(32, 21, 32, 1),
        ),
        ),
        SizedBox(height: 5,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)
            )
          ),
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}
