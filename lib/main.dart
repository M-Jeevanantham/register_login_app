import "package:flutter/material.dart";
import "package:register_login/Screens/loginScreen.dart";
import "./Screens/registerScreen.dart";
void main(){
  return runApp(RegisterLogin());
}

class RegisterLogin extends StatelessWidget{
  RegisterLogin({super.key});
  @override
  Widget build(BuildContext context){
    return(
      MaterialApp(
        debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context)=>const RegisterScreen(),
        "/login":(context)=>Loginscreen()
      },
    ));
  }
}

