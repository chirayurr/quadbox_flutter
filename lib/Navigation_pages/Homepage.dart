import 'package:flutter/cupertino.dart';
import 'package:quadbox/packages.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background1,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          title: Text(
            "QuadBox".toUpperCase(),
            style: AppFonts.appbar,
          ),
          shape:
              const Border(bottom: BorderSide(color: Colors.grey, width: 0.3)),
          elevation: 4,
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              onSelected: (value) {
                // your logic
              },
              itemBuilder: (BuildContext bc) {
                return [
                  PopupMenuItem(
                    child: GestureDetector(
                      onTap: () {},
                      child: const ListTile(
                        leading: Icon(
                          Icons.check_circle_outline,
                        ),
                        title: Text('Select'),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: GestureDetector(
                      onTap: () {},
                      child: const ListTile(
                        leading: Icon(Icons.folder_outlined),
                        title: Text('New Folder'),
                      ),
                    ),
                  ),
                ];
              },
            )
          ],
        ));
  }
}
