import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_1/Screens/login.dart';
import 'package:task_1/widgits/OutLinedButton.dart';
import 'package:task_1/widgits/TButton.dart';
import 'package:task_1/widgits/button.dart';

class SignUp extends StatefulWidget {
  static const String routName='signup';

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    String dialCodeInitial = 'Egypt';
    String textNumberPhone = '';
    String result = '';
    bool isObscure=true;
    var passwordController=TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/loginBackground.jpg'),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 650,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Welcome to Fashion Daily', style: TextStyle(
                              color: Colors.black38),),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Register ', style: TextStyle(color: Colors.purple,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Text('Help', style: TextStyle(
                                    fontSize: 15, color: Colors.purple),),
                                SizedBox(width: 2.5,),
                                Icon(
                                    Icons.help, size: 15, color: Colors.purple),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),

                      Text('Email',
                        style: TextStyle(color: Colors.black38),),

                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration:
                              InputDecoration(
                                labelText: "Eg. example@email.com",
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.purple
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 10,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                ),
                              ),
                              style: TextStyle(fontSize: 18, color: Colors.black),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text('Phone Number',
                        style: TextStyle(color: Colors.black38),),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          CountryListPick(
                            theme: CountryTheme(
                              alphabetSelectedTextColor: Colors.purple,
                              showEnglishName: true,
                              // to show or hide flag
                              isShowFlag: false,
                              // true to show  title country
                              isShowTitle: false,
                              // true to show code phone country
                              isShowCode: true,
                              // to show or hide down icon
                              isDownIcon: true,
                            ),
                            initialSelection: 'EG',

                          ),
                          Expanded(
                            child: TextFormField(
                              onChanged: (text) {
                                setState(() {
                                  textNumberPhone = text;
                                });
                              },
                              decoration:
                              InputDecoration(
                                labelText: "Enter your number",
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.purple
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 10,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                ),
                              ),
                              style: TextStyle(fontSize: 18, color: Colors.black),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        controller: passwordController,
                        obscureText: isObscure,//show/hide password
                        decoration: InputDecoration(
                          label: Text('Password'),
                          labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),
                          prefixIcon: Icon(Icons.lock,color: Colors.purple,),
                          suffixIcon: IconButton(
                            icon: isObscure ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                            onPressed:() {
                              setState(() {isObscure = !isObscure;});
                            },
                            color:Colors.purple ,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Button(text: 'Register', function: (){},color: Colors.purple,),
                      SizedBox(height: 15,),
                      Center(child: Text('Or',style: TextStyle(color: Colors.black38,fontSize: 15,fontWeight: FontWeight.bold),)),
                      SizedBox(height: 15,),
                      ButtonOutlin(text: 'Sign in with Google', function: (){}, icon: FontAwesomeIcons.google),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Has Any Account?',style: TextStyle(color: Colors.purple),),
                          TButton(text: 'Sign in here ', function: (){
                            Navigator.pushNamed(context, Login.routName);
                          })
                        ],
                      ),
                      Center(child: Text('By regestering your account, you are agree to our', style: TextStyle(color: Colors.black38),),),
                      Center(child: TButton(text: 'terms and conditions', function: (){}))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
