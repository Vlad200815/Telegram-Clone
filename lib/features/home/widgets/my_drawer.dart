import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';
import 'widgets.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundAccount(
                      demention: 70,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.dark_mode_rounded,
                        color: theme.colorScheme.secondary,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Vlad Semeniuk",
                          textAlign: TextAlign.start,
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.secondary,
                          ),
                        ),
                        Text(
                          "+380 (68) 638 71 45",
                          textAlign: TextAlign.start,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: theme.colorScheme.secondary,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Container(
                color: Colors.transparent,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 18),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        RoundAccount(
                          demention: 50,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 20,
                          child: MyBadge(),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 30),
                    Text(
                      "Vlad Semeniuk",
                      textAlign: TextAlign.start,
                      style: theme.textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GenerallField(
            icon: Icon(
              Icons.add,
              size: 30,
              color: Colors.grey[400],
            ),
            text: "Add Account",
          ),
          Divider(
            color: Colors.grey[300],
          ),
          GenerallField(
            icon: Icon(
              Icons.person_2_sharp,
              size: 30,
              color: Colors.grey[400],
            ),
            text: "My Profile",
          ),
          Divider(
            color: Colors.grey[300],
          ),
          GenerallField(
            icon: Icon(
              Icons.person_add_alt_sharp,
              size: 30,
              color: Colors.grey[400],
            ),
            text: "New Group",
          ),
          GenerallField(
            icon: Icon(
              Icons.personal_injury,
              size: 30,
              color: Colors.grey[400],
            ),
            text: "Contacts",
          ),
          GenerallField(
            icon: Icon(
              Icons.phone,
              size: 30,
              color: Colors.grey[400],
            ),
            text: "Calls",
          ),
          GenerallField(
            icon: Icon(
              Icons.save_alt_outlined,
              size: 30,
              color: Colors.grey[400],
            ),
            text: "Saved Messages",
          ),
          GenerallField(
            icon: Icon(
              Icons.settings,
              size: 30,
              color: Colors.grey[400],
            ),
            text: "Settings",
          ),
          Divider(
            color: Colors.grey[300],
          ),
          GenerallField(
            icon: Icon(
              Icons.phone,
              size: 30,
              color: Colors.grey[400],
            ),
            text: "Invite Friends",
          ),
          GenerallField(
            icon: Icon(
              Icons.save_alt_outlined,
              size: 30,
              color: Colors.grey[400],
            ),
            text: "Telegram Features",
          ),
        ],
      ),
    );
  }
}
