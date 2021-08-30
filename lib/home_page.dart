import 'package:demo_app/temp_page.dart';
import 'package:demo_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yo this is title!",
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_img.png", fit: BoxFit.cover,),
              SizedBox(height: 30,),
              Text("Welcome", style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 28,
                  color: Colors.blue
                )
              )),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(decoration: InputDecoration(
                        hintText: "Enter your username",
                      ),),
                    TextFormField(decoration: InputDecoration(
                        hintText: "Enter your password",
                      ),
                      obscureText: true,),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, MyRoute.blankPage);
              },
                child: Text("Login"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple)
                ),
              )
              
            ],
          ),
        ),
  
      ),
      
    );
  }
}