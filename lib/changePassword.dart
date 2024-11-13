import 'package:flutter/cupertino.dart';

import 'packages.dart';

class Changepassword extends StatefulWidget {
  const Changepassword({super.key});

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  final _formKey = GlobalKey<FormState>();
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        forceMaterialTransparency: true,
        title: Text(
          "Change Password".toUpperCase(),
          style: AppFonts.appbar,
        ),
        shape: const Border(bottom: BorderSide(color: Colors.grey, width: 0.3)),
        elevation: 4,
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
                    "Enter your old password and new password to make changes.",
                    style: AppFonts.bodyText4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 22.0, right: 22.0, top: 25, bottom: 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Old Password',
                      hintStyle: AppFonts.bodyText2,
                      labelText: 'Old Password',
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
                      left: 22.0, right: 22.0, top: 15, bottom: 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      hintStyle: AppFonts.bodyText2,
                      labelText: 'New Password',
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
                        'Save changes',
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
