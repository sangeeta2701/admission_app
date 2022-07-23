import 'package:admission/screeens/navbar.dart';
import 'package:admission/screeens/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        // title: Align(
        //     alignment: Alignment.center,
        //     child: Text(
        //       "Home",
        //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        //     )),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(height: 225),
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ImageSlider(),
            // child: imageSlider(context),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Courses",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Swiper imageSlider(context) {
//   return Swiper(
//     itemCount: 10,
//     viewportFraction: 0.7,
//     scale: 0.8,
//     autoplay: true,
//     itemBuilder: (BuildContext context, int index) {
//       return Image.network(
//         "https://images.shiksha.com/mediadata/images/1533294008php0E9psI.png",
//         fit: BoxFit.cover,
//       );
//     },
//   );
// }
