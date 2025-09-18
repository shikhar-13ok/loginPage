import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter your Email ",
              ),
            ),

            SizedBox(height: 50),

            TextField(
              controller: passController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter your password ",
              ),
            ),

            ElevatedButton(
              onPressed: () {
                String mail = emailController.text.trim();
                String pass = passController.text.trim();

                if (mail.isEmpty || pass.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Fill the given fields")),
                  );
                } else {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Register hogya!")));
                }
              },
              child: Text(
                "Registration Done!",
                style: TextStyle(color: Colors.green),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            ),
            SizedBox(height: 50),

            InkWell(
              onTap: () {
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>()));
              },

              child: Text(
                "Already Have a account? Click here",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
