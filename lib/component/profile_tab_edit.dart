import 'package:flutter/material.dart';
import 'package:internship/widget/appstyle.dart';

class ProfileTabEdit extends StatelessWidget {
  const ProfileTabEdit({
    super.key,
    required this.profileText,
    this.onTap,
  });

  final String profileText;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            15,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(
                0.5,
              ),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(
                0,
                3,
              ),
            ),
          ],
        ),
        child: Center(
          child: ListTile(
            title: Text(
              profileText,
              style: kProfileText,
            ),
            trailing: Image.asset(
              'assets/edit.png',
            ),
          ),
        ),
      ),
    );
  }
}
