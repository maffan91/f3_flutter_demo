import 'package:flutter/material.dart';
import 'package:flutter_demo/helpers/validator.dart';
import 'package:flutter_demo/widgets/nav-drawer.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _email;
  String _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (value.isEmpty || !Validator.validateEmail(value)) {
          return "Invalid Email Address";
        }
      },
      decoration: InputDecoration(labelText: 'Email'),
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      obscureText: true,
      validator: (String value) {
        if (value.isEmpty) {
          return "Password is required";
        }
      },
      decoration: InputDecoration(labelText: 'Password'),
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildLoginButton() {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      child: Text('Login'),
      onPressed: _proceedLogin,
    );
  }

  void _proceedLogin() {
    if (!_formKey.currentState.validate()) {
      return;
    }
  }

  Widget _buildAuthForm() {
    return SingleChildScrollView(
      child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildEmailField(),
                _buildPasswordField(),
                _buildLoginButton()
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form Demo'),
        ),
        drawer: NavDrawer(),
        body: _buildAuthForm());
  }
}
