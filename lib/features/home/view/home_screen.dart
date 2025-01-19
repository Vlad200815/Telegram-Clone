import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void toSearchScreen() {
      Navigator.pushNamed(context, '/search');
    }

    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        elevation: 0,
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () => toSearchScreen(),
            icon: Icon(
              Icons.search,
              size: 27,
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Telegram Clone", style: theme.textTheme.titleMedium),
        ),
        iconTheme: IconThemeData(
          color: theme.colorScheme.secondary,
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: theme.colorScheme.primary,
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: theme.colorScheme.secondary,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RoundAccount(demention: 60),
                          const SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dima",
                                style: theme.textTheme.bodyLarge,
                              ),
                              Text(
                                "Let's go to school! Where are you?",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 18,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("8:30", style: theme.textTheme.bodySmall),
                              const SizedBox(height: 10),
                              MyNotificationCounter(counter: 8),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Divider(
                        height: 0.5,
                        color: Colors.grey[100],
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
