import 'package:flutter/cupertino.dart';
import '../packages.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool _obsecureText = true;
  bool check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 25.0, left: 15.0, right: 15.0, bottom: 5.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  CupertinoIcons.back,
                  size: 27,
                  color: AppColors.black,
                ),
              ),
            ]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
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
                          hintText: 'Full name',
                          hintStyle: AppFonts.bodyText2,
                          labelText: 'Full name',
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
                        left: 22.0, right: 22.0, top: 0, bottom: 15.0),
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
                // Padding(
                //   padding: const EdgeInsets.only(
                //       left: 22.0, right: 22.0, top: 15, bottom: 0),
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //       hintText: 'Confirm password',
                //       hintStyle: AppFonts.bodyText2,
                //       labelText: 'Confirm password',
                //       labelStyle: AppFonts.bodyText2,
                //       suffixIcon: GestureDetector(
                //         onTap: () {
                //           setState(() {
                //             _obsecureText = !_obsecureText;
                //           });
                //         },
                //         child: Icon(
                //           _obsecureText
                //               ? Icons.visibility
                //               : Icons.visibility_off,
                //           size: 18,
                //         ),
                //       ),
                //       focusedBorder: const OutlineInputBorder(
                //           borderSide: BorderSide(
                //             color: AppColors.black,
                //           ),
                //           borderRadius:
                //               BorderRadius.all(Radius.circular(15.0))),
                //       enabledBorder: const OutlineInputBorder(
                //           borderSide: BorderSide(color: AppColors.grey),
                //           borderRadius:
                //               BorderRadius.all(Radius.circular(15.0))),
                //       errorStyle: const TextStyle(fontSize: 18.0),
                //     ),
                //     textInputAction: TextInputAction.done,
                //     obscureText: _obsecureText,
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 22.0, right: 22.0, top: 10.0, bottom: 0.0),
                  child: FormField(
                    builder: (State) {
                      return Row(
                        children: [
                          Checkbox(
                            value: check1,
                            onChanged: ((val) {
                              setState(() {
                                check1 = val!;
                              });
                            }),
                          ),
                          Text(
                            "Accept the ",
                            style: GoogleFonts.roboto(
                                color: AppColors.black, fontSize: 15),
                          ),
                          GestureDetector(
                            child: Text("Terms and Conditions",
                                style: GoogleFonts.roboto(
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)),
                            onTap: () {},
                          ),
                        ],
                      );
                    },
                    validator: (value) {
                      if (!check1) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          behavior: SnackBarBehavior.floating,
                          duration: const Duration(milliseconds: 3000),
                          backgroundColor: Colors.grey[900],
                          content: Row(
                            children: [
                              Icon(
                                CupertinoIcons.multiply_circle,
                                size: 27,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  'Accept the terms and conditions to proceed.',
                                  style: TextStyle(fontSize: 14),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ));
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 22.0, right: 22.0, top: 10.0, bottom: 0.0),
                  child: Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const Verifyemail()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: AppColors.primary,
                      child: Text(
                        'Create an account',
                        style: AppFonts.button1,
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 22.0, right: 22.0, top: 20.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",
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
                                child: const Login()));
                          },
                          child: Text(
                            "Sign in",
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
              ],
            )),
      ),
    );
  }
}
