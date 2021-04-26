import 'package:check_projects/app/components/custom_textfield.dart';
import 'package:check_projects/app/components/primary_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLandscape
                  ? SizedBox()
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_rounded,
                          color: Color(0xFF0583B9),
                          size: 100,
                        ),
                        Text(
                          "CHECK PROJECTS",
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CustomTextField(
                  text: "Email",
                  icon: Icons.email_outlined,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CustomTextField(
                  text: "Senha",
                  icon: Icons.vpn_key_outlined,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Esqueceu sua senha?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF555555),
                      ),
                    ),
                  ),
                ],
              ),
              PrimaryButton(
                text: "Entrar",
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 30,
                ),
                alignment: Alignment.center,
                child: Text(
                  "OU",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF555555),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      child: Text("G"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      child: Text("F"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      child: Text("T"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
