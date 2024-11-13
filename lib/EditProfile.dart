import 'package:flutter/cupertino.dart';
import 'package:quadbox/packages.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        forceMaterialTransparency: true,
        title: Text(
          "Edit Profile".toUpperCase(),
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
                    "Edit Profile",
                    style: AppFonts.headline2,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 22.0, right: 22.0),
                  child: Text(
                    "Enter your full name or email to edit your information.",
                    style: AppFonts.bodyText4,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 22.0, right: 22.0, top: 25.0),
                    child: TextFormField(
                        decoration: InputDecoration(
                      hintText: 'Full Name *',
                      hintStyle: AppFonts.bodyText2,
                      labelText: 'Full Name *',
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
                      hintText: 'Email address *',
                      hintStyle: AppFonts.bodyText2,
                      labelText: 'Email address *',
                      labelStyle: AppFonts.bodyText2,
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
