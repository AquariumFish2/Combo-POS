import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../controllers/users_pin_code_controller.dart';
import '../../../data/database/user.dart';
import '../../../variables/colors.dart';
import 'package:provider/provider.dart';

class LogInPasswordUsersList extends StatelessWidget {
  const LogInPasswordUsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      padding: const EdgeInsets.only(right: 16, left: 16, top: 24),
      decoration: BoxDecoration(
          color: CustomColors.darkPurple,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff8d0e3c).withOpacity(0.2),
              blurRadius: 17.0, // soften the shadow
              spreadRadius: 1.0,
            ),
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(36), topRight: Radius.circular(36))),
      child: FutureBuilder(
        future: context.read<UsersPinCodeController>().getAllUsers(context),
        builder: (context,snap) {
          return ListView(
            children: context
                .watch<UsersPinCodeController>()
                .users
                .map(
                  (user) => LoginUser(
                    user: user,
                  ),
                )
                .toList(),
          );
        }
      ),
    );
  }
}

class LoginUser extends StatelessWidget {
  final User user;
  const LoginUser({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<UsersPinCodeController>().selectUser(user);
      },
      child: Container(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          top: 8,
          bottom: 8,
        ),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: context.read<UsersPinCodeController>().isSelectedUser(user)
              ? CustomColors.checkoutResumeSession
              : CustomColors.checkoutCloseWindow,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/photo.jpeg"),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff8d0e3c).withOpacity(0.2),
                      blurRadius: 17.0,
                      // soften the shadow
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name as String,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        user.posUserType as String,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Last Login',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    Text(
                      '2021-12-15 04:27 PM',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
