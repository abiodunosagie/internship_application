import 'package:flutter/material.dart';

import '../component/profile_tab_edit.dart';
import '../widget/appstyle.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Edit Profile',
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
          onDestinationSelected: (value) => setState(
                () {
                  selectedIndex = value;
                },
              ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      'assets/profile.png',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
                Text(
                  'Name',
                  style: kProfileHeadingText2,
                ),
                const SizedBox(
                  height: 5,
                ),
                const ProfileTabEdit(profileText: 'Muhhammad Ibrahim'),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Login Name',
                  style: kProfileHeadingText2,
                ),
                const SizedBox(
                  height: 5,
                ),
                const ProfileTabEdit(profileText: 'IbiiMemon'),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Mobile Number',
                  style: kProfileHeadingText2,
                ),
                const SizedBox(
                  height: 5,
                ),
                const ProfileTabEdit(
                  profileText: '******6225221',
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Email',
                  style: kProfileHeadingText2,
                ),
                const SizedBox(
                  height: 5,
                ),
                const ProfileTabEdit(
                  profileText: 'ibrahimmemon930@gmail.com',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                    'Note: All communication, including OTPs will be\nsent to your contact detail mentioned here.'),
                const SizedBox(
                  height: 31,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
