import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';
import '../widgets/widgets.dart';

class AddChatScreen extends StatelessWidget {
  const AddChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        elevation: 0,
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 27,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.sort_by_alpha_rounded,
              size: 27,
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("New Message", style: theme.textTheme.titleMedium),
        ),
        iconTheme: IconThemeData(
          color: theme.colorScheme.secondary,
        ),
      ),
      floatingActionButton: MyFloatingButton(
        icon: Icon(
          Icons.person_add,
          color: theme.colorScheme.secondary,
        ),
        onPressed: () => showMyBottomBar(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //   GenerallField(
            //     icon: Icon(
            //       Icons.supervisor_account_outlined,
            //       size: 35,
            //       color: Colors.grey[700],
            //     ),
            //     text: "New Group",
            //   ),
            //   GenerallField(
            //     icon: Icon(
            //       Icons.person_add,
            //       size: 35,
            //       color: Colors.grey[700],
            //     ),
            //     text: "New Contact",
            //   ),
            //   GenerallField(
            //     icon: Icon(
            //       Icons.volume_down_alt,
            //       size: 35,
            //       color: Colors.grey[700],
            //     ),
            //     text: "New Channel",
            //   ),
            //   Container(
            //     height: 30,
            //     width: double.infinity,
            //     color: const Color.fromARGB(255, 231, 231, 231),
            //     child: Align(
            //       alignment: Alignment.centerLeft,
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 16),
            //         child: Text(
            //           "Sorted by last seen time",
            //           style: theme.textTheme.bodyMedium!.copyWith(
            //             color: Colors.grey[700],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            //   Expanded(
            //     child: ListView.builder(
            //       itemCount: 10,
            //       itemBuilder: (context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.symmetric(
            //               vertical: 10, horizontal: 10),
            //           child: Column(
            //             children: [
            //               // Row(
            //               //   children: [
            //               //     RoundAccount(demention: 60),
            //               //     const SizedBox(width: 15),
            //               //     Column(
            //               //       mainAxisAlignment: MainAxisAlignment.start,
            //               //       crossAxisAlignment: CrossAxisAlignment.start,
            //               //       children: [
            //               //         Text(
            //               //           "Dima",
            //               //           style: theme.textTheme.bodyLarge,
            //               //         ),
            //               //         Text(
            //               //           "last seen at 19:36",
            //               //           style: theme.textTheme.bodyMedium!.copyWith(
            //               //             color: Colors.grey,
            //               //           ),
            //               //         ),
            //               //       ],
            //               //     ),
            //               //   ],
            //               // ),
            //               const SizedBox(height: 15),
            //               Divider(
            //                 height: 0.5,
            //                 color: Colors.grey[100],
            //               )
            //             ],
            //           ),
            //         );
            //       },
            //     ),
            //   )
          ],
        ),
      ),
    );
  }
}
