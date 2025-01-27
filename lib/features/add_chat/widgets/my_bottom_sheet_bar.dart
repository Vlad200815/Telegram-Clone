import 'package:cool_design_practise/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../../functions/functions.dart';
import 'widgets.dart';

final TextEditingController firstNameController = TextEditingController();

Future<void> showMyBottomBar(BuildContext context) async {
  final theme = Theme.of(context);
  return await showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return DraggableScrollableSheet(
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 20,
                      vertical: MediaQuery.of(context).size.width / 30,
                    ),
                    child: Text(
                      "New Contact",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                MyInput(
                  controller: firstNameController,
                  labelText: "First name(required)",
                  isTopLabel: true,
                ),
                MyInput(
                  controller: firstNameController,
                  labelText: "Last name(optional)",
                  isTopLabel: false,
                ),
                NumberInput(
                  labelText: "Phone number",
                ),
                MyButton(
                  text: "Create Contact",
                  onPressed: () => goBack(context),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
