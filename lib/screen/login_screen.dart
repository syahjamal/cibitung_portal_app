import 'package:cbt_portal/screen/register_screen.dart';
import 'package:cbt_portal/widget/footer.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final nikController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Theme.of(context).cardColor,
              width: width,
              height: height,
              child: Column(
                children: [
                  Container(
                    width: width / 1.1,
                    height: height / 3.5,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width / 1.5,
                          child: Hero(
                            tag: 'hero-login',
                            child: Image.asset(
                              'assets/logo/lg_logo_rz.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///LOGIN FORM
                  Container(
                    width: width / 1.05,
                    height: height / 2,
                    decoration: const BoxDecoration(),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: SizedBox(
                              width: width,
                              height: height / 20,
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "LOGIN FORM",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "LGBold",
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width / 1.2,
                            height: height / 4.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12.0, bottom: 12.0),
                                  child: TextField(
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    controller: nikController,
                                    cursorColor: Theme.of(context).primaryColor,
                                    cursorHeight: 20,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.person,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      filled: true,
                                      fillColor: Theme.of(context).canvasColor,
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                      ),
                                      labelText: "NIK : ",
                                      labelStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "LGSmart",
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12.0,
                                    right: 12.0,
                                  ),
                                  child: TextField(
                                    obscureText: _isHidden,
                                    autofocus: false,
                                    controller: passwordController,
                                    cursorColor: Theme.of(context).primaryColor,
                                    cursorHeight: 20,
                                    decoration: InputDecoration(
                                      suffixIcon: InkWell(
                                        onTap: _togglePasswordView,
                                        child: Icon(
                                          _isHidden
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Theme.of(context).canvasColor,
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                      ),
                                      labelText: "Password :",
                                      // errorText: _validate ? 'Password Can\'t Be Empty' : null,
                                      labelStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "LGSmart",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: SizedBox(
                              width: width / 1.3,
                              height: height /20,
                              child: ElevatedButton(
                                onPressed: () {  },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context).primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    elevation: 3
                                ),
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontFamily: "LGBold",
                                      fontSize: 18,
                                      color: Theme.of(context).canvasColor
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Container(
                              width: width / 1.2,
                              height: height / 20,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width / 1.2,
                                    height: height / 40,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Belum punya akun ?",
                                        style: TextStyle(
                                            fontFamily: "LGSmart",
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .primaryColorDark),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(builder: (BuildContext context){
                                          return const RegisterScreen();
                                        })
                                      );
                                    },
                                    splashColor:
                                        Theme.of(context).colorScheme.primary,
                                    child: SizedBox(
                                      width: width / 6,
                                      height: height / 40,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Registrasi",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "LGSmart",
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primaryContainer),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Positioned(
              bottom: 0.2,
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
