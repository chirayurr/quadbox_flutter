import 'package:quadbox/packages.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Center(
                      child: Container(
                        color: Colors.transparent,
                        width: 120,
                        height: 120,
                        child: Image.asset(
                          'Assets/images/mainlogo.png',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 22.0, right: 22.0, top: 60.0, bottom: 15.0),
                      child: TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'Email address',
                            hintStyle: AppFonts.bodyText2,
                            labelText: 'Email address',
                            labelStyle: AppFonts.bodyText2,
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.grey),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            errorStyle: const TextStyle(fontSize: 18.0),
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 22.0, right: 22.0, top: 0, bottom: 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: AppFonts.bodyText2,
                        labelText: 'Password',
                        labelStyle: AppFonts.bodyText2,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obsecureText = !_obsecureText;
                            });
                          },
                          child: Icon(
                            _obsecureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 18,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.black,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
                        errorStyle: const TextStyle(fontSize: 18.0),
                      ),
                      textInputAction: TextInputAction.done,
                      obscureText: _obsecureText,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 22.0, right: 22.0, top: 20.0, bottom: 0.0),
                    child: Container(
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: const Navigation()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: AppColors.primary,
                        child: Text(
                          'Log in',
                          style: AppFonts.button1,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 22.0, right: 22.0, top: 20.0, bottom: 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: const Forgetpassword()));
                        },
                        child: Text(
                          "Forget password?",
                          style: AppFonts.bodyText2,
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 22.0, right: 22.0, top: 25.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: AppColors.black,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                  type: PageTransitionType.fade,
                                  child: const Register()));
                            },
                            child: Text(
                              "Create account",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ],
                      )),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       left: 22.0, right: 22.0, top: 110, bottom: 10.0),
                  //   child: Container(
                  //     color: Colors.transparent,
                  //     width: MediaQuery.of(context).size.width,
                  //     height: 55,
                  //     child: OutlinedButton(
                  //       onPressed: () {
                  //         Navigator.of(context).push(PageTransition(
                  //             type: PageTransitionType.fade,
                  //             child: const Register()));
                  //       },
                  //       style: OutlinedButton.styleFrom(
                  //         side: const BorderSide(
                  //             color: AppColors.primary,
                  //             width: 1), // Blue border color
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //         ),
                  //         backgroundColor:
                  //             Colors.transparent, // Transparent inside color
                  //         padding: EdgeInsets
                  //             .zero, // Optional: removes default padding
                  //       ),
                  //       child: Text(
                  //         'Create new account',
                  //         style: AppFonts.button2, // Your custom text style
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              )),
        ),
      ),
    );
  }
}
