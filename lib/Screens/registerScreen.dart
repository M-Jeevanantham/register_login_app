import "package:flutter/material.dart";
class RegisterScreen extends StatelessWidget{
  const RegisterScreen({super.key});
  final bool checked=false;
  @override
  Widget build(BuildContext context){
    return(Scaffold(
      appBar: AppBar(title: Text("Nexus"),centerTitle: true,
  automaticallyImplyLeading: false,),

      body:SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child:Column(children:[
        Padding(padding:EdgeInsets.symmetric(horizontal: 20.0),child:Align(alignment: Alignment.topLeft,child: 
        Text("Create Account",style: TextStyle(fontSize: 40.0),),),),
        Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),child:  Align(alignment: Alignment.topLeft,child: 
        Text("Join Nexus to start your journey today.",style: TextStyle(fontSize: 14.0)),),),
       
        Center( 
        child:  FormWidget(),
        ),
        Row(children: [
          CheckBoxWidget(),
          Flexible(child: Text("By creating a account, you agree to our teams of services and privacy policy",style: TextStyle(fontSize: 15.0),))
          
        ],),
        SizedBox(height: 20,),
        
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.g_mobiledata),
              label: Text("Google"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.facebook),
              label: Text("Facebook"),
            ),
          ],
        ),
          
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){}, child: Text("Create Account"),
        style:ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white,minimumSize: Size(280,50))),

      Row( mainAxisAlignment: MainAxisAlignment.center,children:[Text("Already have a account ?"),TextButton(onPressed: ()=>Navigator.pushNamed(context, "/login"), child: Text("Sign in"))])        
        ])))
      

    ));
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: 350,
    
    child: Column(
      children: [
        Align(alignment:Alignment.centerLeft ,child:Text("Full Name",textAlign: TextAlign.left,),),
        
        TextFormField(keyboardType: TextInputType.name,
        decoration:InputDecoration(
           border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: "Enter Full name",
          prefixIcon: Icon(Icons.person)
          
          ),),
        SizedBox(height:10.0,),
        Align(alignment:Alignment.centerLeft ,child:Text("Email Address",textAlign: TextAlign.left,),),
        TextFormField(keyboardType: TextInputType.name,
        decoration:InputDecoration(
          hintText: "Enter Full name",
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
          SizedBox(height:10.0,),

        Align(alignment:Alignment.centerLeft ,child:Text("Password",textAlign: TextAlign.left,),),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: ".........",
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
        ),
        SizedBox(height:10.0,),
        Align(alignment:Alignment.centerLeft ,child:Text("Confirm Password",textAlign: TextAlign.left,),),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: ".........",
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
        )
      ],),);
  }
}

class CheckBoxWidget extends StatefulWidget{
  
  @override
  State<CheckBoxWidget> createState() =>_CheckBoxWidgetState();
}
  class _CheckBoxWidgetState extends State<CheckBoxWidget>{
    bool checked = false;
    @override
    Widget build(BuildContext context){
      return Checkbox(value: checked, onChanged: (value){
        setState(() {
          checked=value!;
        });
      });
    }
  }

