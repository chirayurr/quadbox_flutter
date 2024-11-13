import 'package:flutter/cupertino.dart';
import 'package:quadbox/packages.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Text(
          "Account".toUpperCase(),
          style: AppFonts.appbar,
        ),
        shape: const Border(bottom: BorderSide(color: Colors.grey, width: 0.3)),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Row(
                children: [
                  Container(
                    color: Colors.transparent,
                    width: 57,
                    height: 57,
                    child: Image.asset(
                      'Assets/images/user_icon.png',
                    ),
                  ),
                  // Container(
                  //   padding: const EdgeInsets.all(6),
                  //   decoration: BoxDecoration(
                  //       border:
                  //           Border.all(color: Color(0xFFD6D6D6), width: 0.8),
                  //       shape: BoxShape.circle,
                  //       color: Colors.grey[200] // Specify your desired color
                  //       ),
                  //   child: const Icon(
                  //     Icons.person,
                  //     color: AppColors.grey, // Adjust the icon color if needed
                  //     size: 50,
                  //   ),
                  // ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chirayu Rai",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[900],
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Text(
                            "chirayuchamling@gmail.com",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                color: AppColors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: const Profile()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 18.0, bottom: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Profile",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        )),
                    const Icon(
                      CupertinoIcons.forward,
                      size: 25,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: const Changepassword()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 18.0, bottom: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Change password",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        )),
                    const Icon(
                      CupertinoIcons.forward,
                      size: 25,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 18.0, bottom: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Terms & Conditions",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        )),
                    const Icon(
                      CupertinoIcons.forward,
                      size: 25,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text('Log out'),
                          content:
                              const Text('Are you sure you want to log out?'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) => Login()),
                                      (route) => false);
                                },
                                child: const Text('YES')),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('NO'))
                          ],
                        ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 18.0, bottom: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Log out",
                        style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        )),
                    const Icon(
                      CupertinoIcons.forward,
                      size: 25,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
