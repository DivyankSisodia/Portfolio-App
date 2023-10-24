import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {

  myProject(skill, projectName, desc,s1,s2,s3, linkurl){
    return Card(
                  child: Container(
      decoration: const BoxDecoration(
        color:  Color.fromARGB(255, 107, 106, 106),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      height: 240,
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              skill, 
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            // SizedBox(height: 6,),
            Text(
              projectName,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Skills: ', style: TextStyle(color: Colors.white, fontSize: 18),),
                Text(
                  s1,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  s2,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  s3,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            // const SizedBox(height: 10,),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.star, 
                  color: Colors.white,size: 20,
                ),
                const Text('10', style: TextStyle(color: Colors.white, fontSize: 20),),
                Expanded(child: Container()),
                IconButton(
                  onPressed: (){
                    var link =
                    linkurl;
                    launchUrl(
                      Uri.parse(link),
                      mode: LaunchMode.inAppWebView
                    );
                  }, 
                  icon: const Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  )
                ),
              ],
            )
          ],
        ),
      ),
    ),
                );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Projects',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
backgroundColor: Color.fromARGB(255, 107, 106, 106),
      ),
      body: SingleChildScrollView(
        child: Container(
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/peakpx.jpg'),
          //     fit: BoxFit.cover,
          //     // opacity: 0.7
          //   ),
          // ),
          color: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120.0, left: 20.0, right: 20),
                child: Column(
                  children: [
                    myProject(
                      'Flutter', 
                      'Imprint thoughts', 
                      'A Notes App with beautiful UI where you can jot down your ideas', 
                      'Dart', 
                      'Flutter', 
                      'Firebase', 
                      'https://github.com/DivyankSisodia/Portfolio-App/tree/master'
                    ),
                    myProject(
                      'React JS',
                      'Crytpo IQ',
                      'A web app where you can view the latest prices of crypto currencies',
                      'Rest API',
                      'JavaScript',
                      'React JS',
                      'https://github.com/DivyankSisodia/Cryto_IQ'
                    ),
                    myProject(
                      'Flutter',
                      'E-commerce App',
                      'Currently Building an E-commerce App with Flutter using GetX',
                      'GetX',
                      'Flutter',
                      'Firebase',
                      'https://github.com/DivyankSisodia/Portfolio-App/tree/master'
                    ),
                    myProject(
                      'Vanilla Javascript',
                      'Calculator',
                      'A simple calculator made with Vanilla Javascript with Beautiful UI',
                      'HTML',
                      'CSS',
                      'Javascript',
                      'https://github.com/DivyankSisodia/Calculator'
                    ),
                  ],
                )
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
