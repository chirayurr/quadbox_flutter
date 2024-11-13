import 'package:flutter/cupertino.dart';
import 'package:quadbox/packages.dart';

class Verifyemail extends StatefulWidget {
  const Verifyemail({super.key});

  @override
  State<Verifyemail> createState() => _VerifyemailState();
}

class _VerifyemailState extends State<Verifyemail> {
  final _formKey = GlobalKey<FormState>();

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
                    "Verify Email",
                    style: AppFonts.headline2,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 22.0, right: 22.0),
                  child: Text(
                    "Enter the OTP code sent to your email.",
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
