import "package:flutter/material.dart";

class Loginscreen extends StatelessWidget{
  Loginscreen({super.key});
  @override
  Widget build(BuildContext context){
    return(Scaffold(
     backgroundColor: Color.fromARGB(255, 234, 237, 251),
      appBar: AppBar( automaticallyImplyLeading: false,centerTitle: true,title: Text("Nexus"),backgroundColor: Color.fromARGB(255, 234, 237, 251),),
      body:SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child:Center(
        child: Column(
          children: [
            Text("Welcome Back",style: TextStyle(fontSize: 35.0),),
            Text("sign in to continue your journey with nexus.",style: TextStyle(fontSize:15.0),),
            SizedBox(height:40),
            Container(
              width: 350,
              padding: EdgeInsets.all(20.0),
              decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: Column(children: [
                Align(alignment: Alignment.centerLeft,child:Text("Email Address",style: TextStyle(),)),
                TextFormField(keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: "emailaddress@gmail.com",prefixIcon: Icon(Icons.email),border:OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),

                SizedBox(height: 10.0,),
                Align(alignment: Alignment.centerLeft,child:Text("Password",style: TextStyle(),)),
                TextFormField(keyboardType: TextInputType.emailAddress,obscureText: true,
                decoration: InputDecoration(hintText: "........",prefixIcon: Icon(Icons.lock),border:OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                SizedBox(height: 30.0,),
                ElevatedButton(onPressed: (){},
                style:ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor:Colors.blue, minimumSize: Size(250, 50)), 
                child:Text("Sign in")),
                SizedBox(height: 20.0,),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 10,
                      ),
                    ),

                    Text(
                      "OR CONTINUE WITH",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 10,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height:20.0),
                ElevatedButton.icon(onPressed: (){}, label: Text("Google"),icon: Icon(Icons.g_mobiledata),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,minimumSize: Size(250, 50)),),
                SizedBox(height: 20.0,),
                ElevatedButton.icon(onPressed: (){}, label: Text("Apple"),icon: Icon(Icons.apple),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,minimumSize: Size(250, 50)),),
                SizedBox(height: 20.0,),
                Padding(padding: EdgeInsetsDirectional.symmetric(horizontal:15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed: ()=>Navigator.pushNamed(context, "/"), child: Text("Sign Up"))
                ],)),
                  
                  
                
              ],),
            )
          ],
        ),
      ) ,)) 
    ));
  }
}