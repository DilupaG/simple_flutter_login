import 'package:flutter/material.dart';
import 'Home.dart';

// Login form
class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>();
  bool _obsecureText = false;
  String _userName = "";
  String _password = "";

  void _toggle() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.person), labelText: "Username"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter valid text";
              }
              return null;
            },
            onChanged: (newValue) {
              setState(() {
                _userName = newValue;
              });
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          Stack(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(Icons.password_outlined), labelText: "Password"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter valid text";
                  }
                  return null;
                },
                obscureText: _obsecureText,
                onChanged: (newValue) {
                  setState(() {
                    _password = newValue;
                  });
                },
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: IconButton(
                  onPressed: _toggle,
                  icon: const Icon(Icons.remove_red_eye),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          Text("Processing Data $_userName and $_password")));
                }
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Text("Submit"))
        ]),
      ),
    );
  }
}
