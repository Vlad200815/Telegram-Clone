import 'dart:developer';

import 'package:cool_design_practise/features/profile/profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.width / 1.7,
            right: 20,
            child: SizedBox(
              height: 70,
              width: 70,
              child: FloatingActionButton(
                mini: false,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                onPressed: () {
                  log(tabController.index.toString());
                },
                backgroundColor: const Color.fromARGB(255, 246, 248, 255),
                child: Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              MyCustomAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        child: Text(
                          "Info",
                          style: TextStyle(
                            fontSize: 18,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    InfoField(
                      title: "+380 (68) 638 71 45",
                      description: "Mobile",
                    ),
                    const SizedBox(height: 15),
                    InfoField(
                      title: "Bio",
                      description: "Flutter Developer",
                    ),
                    const SizedBox(height: 15),
                    InfoField(
                      title: "@VladSemeniukPr",
                      description: "Username",
                    ),
                    const SizedBox(height: 15),
                    InfoField(
                      title: "Mar 11, 2008 (16 years old)",
                      description: "Date of Birth",
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                height: 20,
              ),
              TabBar(
                indicatorColor: theme.colorScheme.secondary,
                dividerHeight: 0,
                enableFeedback: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                controller: tabController,
                unselectedLabelColor: Colors.grey[600],
                labelColor: theme.colorScheme.primary,
                labelStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold, // Bold active tab
                ),
                tabs: [
                  Tab(
                    text: "Posts",
                  ),
                  Tab(
                    text: "Archived Posts",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    PostsScreen(),
                    ArchivedPostScreen(),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.width / 1.092,
            right: 30,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.qr_code,
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
