import 'package:flutter/material.dart';

class Registration2 extends StatefulWidget {
  @override
  State<Registration2> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Page'),
      ),
      body: Form(
        child: Column(
          children: [
            Image.asset(
              "assets/icons/rk.jpg",
              height: 100,
              width: 100,
            ),
            const Text(
              "Registration",
              style: TextStyle(fontSize: 30, color: Colors.purple),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                    hintText: "Name",
                    labelText: "Your Full Name",
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
                validator: (phone) {
                  if (phone!.isEmpty) {
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
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.visibility_off_sharp),
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
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.visibility_off_sharp),
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
            ElevatedButton(onPressed: () {}, child: Text("Register")),
            TextButton(
                onPressed: () {}, child: const Text("Already a user?? Login Now!!!"))
          ],
        ),
      ),
    );
  }
}