import 'package:flutter/material.dart';
import 'package:practise_project/home.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Registration2 extends StatefulWidget {
  @override
  State<Registration2> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration2> {
  var formkey=GlobalKey<FormState>();
  bool showpass=true;
  bool showpass1=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Page'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Image.asset(
              "assets/icons/rk.jpg",
              height: 100,
              width: 100,
            ),
            const Text(
              "Registration",
              style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Name",
                    labelText: "Your Full Name",
                    helperText: "First letter should be capital",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Phone Number",
                    labelText: "Phone Number",
                    helperText: "Must contain 10 digits",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (phone) {
                  if (phone!.isEmpty || phone.length==10) {
                    return "Fields are empty or invalid";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.people),
                    hintText: "Username",
                    labelText: "User Name",
                    helperText: "user name must be an email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@')) {
                    return "Fields are empty or invalid";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15,
                  bottom: 15),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass == true) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility)),
                    hintText: "PassWord",
                    labelText: "Password",
                    helperText: "password must contain greater than 8 characters",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (pass) {
                  if (pass!.isEmpty || pass.length < 6) {
                    return "Fields are empty or password length must be >=8";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15,
                  bottom: 15),
              child: TextFormField(
                obscureText: showpass1,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass1 == true) {
                              showpass1 = false;
                            } else {
                              showpass1 = true;
                            }
                          });
                        },
                        icon: Icon(showpass1 == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility)),
                    hintText: "Conform PassWord",
                    labelText: "Conform Password",
                    helperText: "password must contain greater than 8 characters",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (cpass) {
                  if (cpass!.isEmpty || cpass.length < 6 ) {
                    return "Password Error ";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(onPressed: () {
              final valid = formkey.currentState!.validate();
              if(valid)
              {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
              }
              else{
                Fluttertoast.showToast(
                    msg: "Invalid Username or Password",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.TOP,
                    // timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              }
            }, child: Text("Register")),
            TextButton(
                onPressed: () {}, child: const Text("Already a user?? Login Now!!!"))
          ],
        ),
      ),
    );
  }
}