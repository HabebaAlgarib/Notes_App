import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key, required this.isColorSelected, required this.color});
  final bool isColorSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isColorSelected
        ? CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 34,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffE8AEB7),
    Color(0xffB8E1FF),
    Color(0xffA9FFF7),
    Color(0xff94FBAB),
    Color(0xff82ABA1),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isColorSelected: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
