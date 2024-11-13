import 'package:flutter/cupertino.dart';
import 'package:quadbox/packages.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  final _formKey = GlobalKey<FormState>();
  bool _obsecureText = true;

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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 22.0, right: 22.0),
                  child: Text(
                    "Change Password",
                    style: AppFonts.headline2,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 22.0, right: 22.0),
                  child: Text(
                    "Enter the OTP code and new password.",
                    style: AppFonts.bodyText2,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 22.0, right: 22.0, top: 25.0),
                    child: TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'OTP code',
                          hintStyle: AppFonts.bodyText2,
                          labelText: 'OTP code',
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
                      left: 22.0, right: 22.0, top: 15, bottom: 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'New password',
                      hintStyle: AppFonts.bodyText2,
                      labelText: 'New password',
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
                      left: 22.0, right: 22.0, top: 20, bottom: 0.0),
                  child: Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: AppColors.primary,
                      child: Text(
                        'Submit',
                        style: AppFonts.button1,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
