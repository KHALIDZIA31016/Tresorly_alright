import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late List<int> selectedList = List<int>.generate(2, (index) => -1); // Initialize here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 120,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: selectedList[index] == index ? Colors.blue : Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedList[index] = index; // Set selected value based on index
                    });
                  },
                  child: Radio<int>(
                    value: index,
                    groupValue: selectedList[index], // Use selectedList[index] as groupValue
                    onChanged: (val) {
                      setState(() {
                        selectedList[index] = val!; // Update selected value
                      });
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
