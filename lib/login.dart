import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_b24/providers/user.dart';
import 'package:provider/provider.dart';
import 'package:string_validator/string_validator.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(
        children: [
          TextField(
            controller: emailController,
            enabled: true,
            keyboardType: TextInputType.emailAddress,
            maxLines: 1,
            inputFormatters: [LengthLimitingTextInputFormatter(11)],
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'test@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.email),
              filled: true,
              fillColor: Colors.blue.withOpacity(0.4),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Colors.blue, width: 3),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Colors.yellow, width: 3),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Colors.grey, width: 3),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: pwdController,
            enabled: true,
            keyboardType: TextInputType.emailAddress,
            maxLines: 1,
            obscureText: true,
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: 'Password must be 6 or more characters.',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
              filled: true,
              fillColor: Colors.blue.withOpacity(0.4),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Colors.blue, width: 3),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Colors.yellow, width: 3),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Colors.grey, width: 3),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (emailController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Email cannot be empty.")),
                );
                return;
              }

              if (!emailController.text.isEmail) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Kindly enter valid email.")),
                );
                return;
              }
              if (pwdController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Password cannot be empty.")),
                );
                return;
              }
              if (pwdController.text.length < 6) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Password is too short.")),
                );
                return;
              }
              userProvider.setEmail(emailController.text);
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
