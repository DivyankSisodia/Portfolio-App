import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myinsight/main_screen.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Stack(children: [
            Container(
              // margin: const EdgeInsets.all(35),
              child: ShaderMask(
                shaderCallback: (Rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect);
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/my_image.jpeg',
                  height: 450,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.49),
              child: Column(
                children: [
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  const Text(
                    'Hello! I am',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Divyank Sisodia',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    'Software Developer',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        'Contact Me',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 240),
                    child: Text(
                      'A little about me',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        'I am a passionate Computer Science engineer, wanted to work in environment where i can improve my personality, skills and gain knowledge by working with a team of experts and also contribute to the growth of the organization.',
                        style: TextStyle(color: Colors.amberAccent),
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                        size: 40,
                      ),
                      Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 40,
                      ),
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 40,
                      ),
                      Icon(
                        FontAwesomeIcons.stackOverflow,
                        color: Colors.white,
                        size: 40,
                      ),
                      Icon(
                        FontAwesomeIcons.hackerrank,
                        color: Colors.white,
                        size: 40,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
