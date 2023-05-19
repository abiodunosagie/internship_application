import 'package:flutter/material.dart';
import 'package:internship/presentation/profile_page_edit.dart';
import 'package:internship/widget/appstyle.dart';

import '../component/profile_tab.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Profile',
          style: kProfileHeadingText,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(
              0xff00214e,
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (value) => setState(() {
                selectedIndex = value;
              }),
          destinations: [
            const NavigationDestination(
              icon: Icon(
                Icons.home_filled,
                color: Color(
                  0xffacacac,
                ),
              ),
              label: 'Home',
            ),
            const NavigationDestination(
              icon: Icon(
                Icons.location_pin,
                color: Color(
                  0xffacacac,
                ),
              ),
              label: 'location',
            ),
            const NavigationDestination(
              icon: Icon(
                Icons.money_rounded,
                color: Color(
                  0xffacacac,
                ),
              ),
              label: 'Finance',
            ),
            NavigationDestination(
              icon: Image.asset('assets/barcode.png'),
              label: 'Scan QR',
            ),
            const NavigationDestination(
              icon: Icon(
                Icons.person,
                color: Color(
                  0xffacacac,
                ),
              ),
              label: 'Profile',
            ),
          ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 31.0,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/profile.png',
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
                ProfileTabs(
                  image: 'assets/profilephoto.png',
                  profileText: 'Personal Details',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileEditScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 38,
                ),
                const ProfileTabs(
                  image: 'assets/house.png',
                  profileText: 'Bank Account Details',
                ),
                const SizedBox(
                  height: 38,
                ),
                const ProfileTabs(
                  image: 'assets/book.png',
                  profileText: 'Account Opening Form',
                ),
                const SizedBox(
                  height: 38,
                ),
                const ProfileTabs(
                  image: 'assets/social.png',
                  profileText: 'Invite Friend to Paynow',
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
