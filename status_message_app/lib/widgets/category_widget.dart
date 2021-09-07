import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:status_message_app/views/status_view_viewModel.dart';

Widget customCategoryButton(
    {required GestureTapCallback onPress,
    required FaIcon icon,
    required String label}) {
  return TextButton.icon(
    icon: icon,
    label: Text(label),
    style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.yellow.shade700,
        onSurface: Colors.grey,
        shadowColor: Colors.deepOrangeAccent,
        elevation: 15,
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)))),
    onPressed: onPress,
  );
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StatusMessageViewModel>.nonReactive(
        viewModelBuilder: () => StatusMessageViewModel(),
        builder: (context, model, child) => Padding(
              padding: const EdgeInsets.all(12.0),
              child: Wrap(
                spacing: 6,
                direction: Axis.horizontal,
                children: [
                  customCategoryButton(
                      icon: FaIcon(FontAwesomeIcons.heart),
                      label: model.categories[0],
                      onPress: () {
                        model.getMessage(model.categories[0]);
                      }),
                  customCategoryButton(
                      icon: FaIcon(FontAwesomeIcons.heart),
                      label: model.categories[1],
                      onPress: () {
                        model.getMessage(model.categories[1]);
                      }),
                  customCategoryButton(
                      icon: FaIcon(FontAwesomeIcons.heart),
                      label: model.categories[2],
                      onPress: () {
                        model.getMessage(model.categories[2]);
                      }),
                  customCategoryButton(
                      icon: FaIcon(FontAwesomeIcons.heart),
                      label: model.categories[3],
                      onPress: () {
                        model.getMessage(model.categories[3]);
                      }),
                  customCategoryButton(
                      icon: FaIcon(FontAwesomeIcons.heart),
                      label: model.categories[4],
                      onPress: () {
                        model.getMessage(model.categories[4]);
                      }),
                  customCategoryButton(
                      icon: FaIcon(FontAwesomeIcons.heart),
                      label: model.categories[5],
                      onPress: () {
                        model.getMessage(model.categories[5]);
                      }),
                  customCategoryButton(
                      icon: FaIcon(FontAwesomeIcons.heart),
                      label: model.categories[6],
                      onPress: () {
                        model.getMessage(model.categories[6]);
                      }),
                  customCategoryButton(
                      icon: FaIcon(FontAwesomeIcons.heart),
                      label: model.categories[7],
                      onPress: () {
                        model.getMessage(model.categories[7]);
                      }),
                ],
              ),
            ));
  }
}
