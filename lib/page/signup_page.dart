import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uts_login/page/login_page.dart';


class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return initWitget();
  }

final TextEditingController emailController = TextEditingController();
final TextEditingController numberController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

@override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    numberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

initWitget() {
  return Scaffold(
    backgroundColor: new Color(0xFFfefae0),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90)),
                color: new Color(0xffF5591F),
                gradient: LinearGradient(
                  colors: [(new Color(0xff283618)), (new Color(0xff606c38))],
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(80),
                        child: Image.asset('assets/user keren.jpg', fit: BoxFit.cover,),
                      )
                    )
                  ],
                ),
              )),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ]),
            child: TextField(
              controller: emailController,
              cursorColor: Color(0xff283618),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xff283618),
                  ),
                  hintText: "email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ]),
            child: TextField(
              controller: numberController,
              keyboardType: TextInputType.phone,
              cursorColor: Color(0xff283618),
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.phone,
                    color: Color(0xff283618),
                  ),
                  hintText: "phone number",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ]),
            child: TextField(
              controller: passwordController,
              cursorColor: Color(0xff283618),
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xff283618),
                  ),
                  hintText: "password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: (){
              },
              child: Text(''),
            ),
          ),

          GestureDetector(

            onTap: () {
              showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text('email: '+ emailController.text + '\n' + 'phone number: ' + numberController.text + '\n' + 'password: ' + passwordController.text),
              );
            },
          );
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              padding: EdgeInsets.only(left: 20,right: 20),
              height: 54,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [(new Color(0xff283618)), (new Color(0xff606c38))],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight
                ),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
                boxShadow: [BoxShadow(

                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color.fromARGB(255, 152, 160, 143)
                )],
                ),
                child: Text('SIGN UP',style: TextStyle(color: Colors.white),
                ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? '),
                GestureDetector(
                  child: Text('login',style: TextStyle(color: Color(0xff283618)),),
                  onTap: (){

                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage())
                      
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
}