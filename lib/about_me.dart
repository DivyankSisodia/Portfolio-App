import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myinsight/main_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
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
            Padding(
              padding: const EdgeInsets.only(top: 36.0, left: 10),
              child: IconButton(
                onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainScreen() )),
                icon: const Icon(FontAwesomeIcons.arrowRightArrowLeft),
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
                                builder: (context) => const MainScreen()));
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
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'I am a passionate Computer Science engineer, wanted to work in environment where i can improve my personality, skills and gain knowledge by working with a team of experts and also contribute to the growth of the organization.',
                        style: TextStyle(
                            color: Color.fromARGB(255, 217, 245, 160)),
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          const link = 'https://github.com/DivyankSisodia';
                          launchUrl(Uri.parse(link),
                              mode: LaunchMode.inAppWebView);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          const link = 'https://www.linkedin.com/in/divyank-sisodia-b07576230/';
                          launchUrl(Uri.parse(link),
                              mode: LaunchMode.inAppWebView);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          const link = 'https://www.instagram.com/sisodiadivyank/';
                          launchUrl(Uri.parse(link),
                              mode: LaunchMode.inAppWebView);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          const link = 'https://www.hackerrank.com/dashboard';
                          launchUrl(Uri.parse(link),
                              mode: LaunchMode.inAppWebView);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.stackOverflow,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          const link = 'https://www.hackerrank.com/dashboard';
                          launchUrl(Uri.parse(link),
                              mode: LaunchMode.inAppWebView);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.hackerrank,
                          color: Colors.white,
                          size: 40,
                        ),
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
