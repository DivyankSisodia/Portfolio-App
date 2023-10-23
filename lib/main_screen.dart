import 'package:flutter/material.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MyMarks(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Text(type),
        )
      ],
    );
  }

  mySkills(icon, tech) {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color.fromARGB(255, 0, 0, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 27,
                color: Colors.white,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                tech,
                style: const TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Simple Example'),
      ),
      body: SlidingSheet(
        elevation: 8,
        openBouncing: true,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                child: Image.asset('name')
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
              height: 550,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        'Marks',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyMarks('84%', '10th'),
                        MyMarks('91%', '12th'),
                        MyMarks('89%', ' B.Tech'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        'Skills',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            mySkills(Icons.flutter_dash, 'Flutter'),
                            mySkills(FontAwesomeIcons.java, 'Java'),
                            mySkills(FontAwesomeIcons.html5, 'HTML'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            mySkills(FontAwesomeIcons.css3, 'CSS'),
                            mySkills(FontAwesomeIcons.react, 'React'),
                            mySkills(FontAwesomeIcons.database, 'SQL'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            mySkills(LineIcons.code, 'Dart'),
                            mySkills(FontAwesomeIcons.github, 'Github'),
                            mySkills(FontAwesomeIcons.cloud, 'Firebase'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
              )
            );
        },
      ),
    );
  }
}
