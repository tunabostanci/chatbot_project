import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Register',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Enter your credentials in order to enter the application'),
              TextField(
                controller: _email,
                enableSuggestions: false,
                autofocus: false,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration:
                    InputDecoration(hintText: 'Enter your email here...'),
              ),
              TextField(
                controller: _password,
                enableSuggestions: false,
                autofocus: false,
                autocorrect: false,
                decoration:
                    InputDecoration(hintText: 'Enter your password here...'),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: (){

                    },
                    child: const Text('Register'),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
