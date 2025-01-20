import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';
import '../../functions/functions.dart';
import '../widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  IconButton(
                    onPressed: () => goBackToHome(context),
                    icon: Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 20),
                  SearchInput(
                    controller: searchController,
                  )
                ],
              ),
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: 10,
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.symmetric(
              //           vertical: 10,
              //           horizontal: 10,
              //         ),
              //         child: Column(
              //           children: [
              //             Row(
              //               children: [
              //                 RoundAccount(demention: 60),
              //                 const SizedBox(width: 15),
              //                 Column(
              //                   mainAxisAlignment: MainAxisAlignment.start,
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(
              //                       "Dima",
              //                       style: theme.textTheme.bodyLarge,
              //                     ),
              //                     Text(
              //                       "last seen at 19:36",
              //                       style: theme.textTheme.bodyMedium!.copyWith(
              //                         color: Colors.grey,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ],
              //             ),
              //             const SizedBox(height: 15),
              //             Divider(
              //               height: 0.5,
              //               color: Colors.grey[100],
              //             )
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
