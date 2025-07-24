import 'package:flutter/material.dart';



class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Text("الشاشة ${_selectedIndex + 1}", style: TextStyle(fontSize: 24)),
        ),
        bottomNavigationBar: Stack(
          children: [
            ClipPath(
              clipper: BottomNavBarClipper(),
              child: Container(
                height: 80,
                color: Colors.brown,
              ),
            ),
            Positioned(
              left: 0, right: 0, bottom: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(3, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selectedIndex == index ? Colors.orange : Colors.transparent,
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        [Icons.home, Icons.search, Icons.settings][index],
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double curveHeight = 30;

    path.lineTo(size.width * 0.25, 0);
    path.quadraticBezierTo(size.width * 0.35, curveHeight, size.width * 0.5, curveHeight);
    path.quadraticBezierTo(size.width * 0.65, curveHeight, size.width * 0.75, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}