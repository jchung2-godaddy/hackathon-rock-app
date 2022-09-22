import 'package:flutter/material.dart';
import 'package:rock/model/check_item.dart';

class CheckListScreen extends StatefulWidget {
  final PageController pageController;
  const CheckListScreen({Key? key, required this.pageController})
      : super(key: key);

  @override
  State<CheckListScreen> createState() => _CheckListScreenState();
}

class _CheckListScreenState extends State<CheckListScreen> {
  final List<CheckItem> _checkList = [
    CheckItem('Try a different Browser', false),
    CheckItem('Clear client Cookies', false),
    CheckItem('Add Network Tab Screenshot', false),
    CheckItem('Add Console Error Screenshot', false),
    CheckItem('Check if just one Product is failing', false)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/Hand_with_pen_3.gif'),
              height: 300,
            ),
            const Text(
              "A Checklist before Calling",
              style: TextStyle(
                fontFamily: 'GD Sherpa',
                fontSize: 22,
                color: Color.fromRGBO(17, 17, 17, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _checkList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Checkbox(
                      value: _checkList[index].isChecked,
                      activeColor: const Color.fromRGBO(25, 118, 210, 1),
                      onChanged: (bool? value) {
                        setState(() {
                          _checkList[index] =
                              CheckItem(_checkList[index].item, value!);
                        });
                      },
                    ),
                    title: Text(
                      _checkList[index].item,
                      style: TextStyle(
                        fontFamily: 'GD Sherpa',
                        fontSize: 16,
                        color: _checkList[index].isChecked
                            ? const Color.fromRGBO(25, 118, 210, 1)
                            : const Color.fromRGBO(17, 17, 17, 1),
                      ),
                    ),
                  );
                },
              ),
            ),
            Visibility(
              visible: _checkList.every((idx) => idx.isChecked),
              child: SizedBox(
                height: 175,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    onPressed: () {
                      widget.pageController.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeOut);
                    },
                    child: const Text(
                      "I Confirm",
                      style: TextStyle(
                        fontFamily: 'GD Sherpa',
                        fontSize: 21,
                        color: Color.fromRGBO(25, 118, 210, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
