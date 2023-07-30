import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task1/widgets/icon_button_widget.dart';
import 'package:task1/widgets/text_column_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25.0),
            ),
          ),
          builder: (context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Share To',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButtonWidget(FontAwesomeIcons.telegram, 40, Colors.blue),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButtonWidget(FontAwesomeIcons.instagram, 40, Colors.red),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButtonWidget(FontAwesomeIcons.whatsapp, 40, Colors.green),
                      const SizedBox(
                        width: 15,
                      ),
                      IconButtonWidget(FontAwesomeIcons.facebook, 40, Colors.blue),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  TextColumnWidget('Download image'),
                  TextColumnWidget('Hide pin'),
                  TextColumnWidget('Report pin'),
                ],
              ),
            );
          },
        );
      },
      icon: const Icon(Icons.more_horiz),
    );
  }
}
