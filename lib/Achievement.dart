import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AchievementScreen extends StatefulWidget {
  const AchievementScreen({super.key});

  @override
  State<AchievementScreen> createState() => _AchievementScreenState();
}

class _AchievementScreenState extends State<AchievementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Achievements',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 77, 77, 77),
      ),
      body: Container(
        // color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Work Experience',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'MAQ Software',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Text(
                'Associate Software Engineer',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  'I have worked on edge cutting technologies like Javascript, React Js, PowerBI, Azure DataFactory and i have also worked on Azure DevOps for CI/CD pipeline.',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 14.0, right: 14.0),
                child: Text(
                  'In my tenure of 4 months, i have worked on 1 live project and worked on 2 micro projects. One was a web application and other is a data pipeline project.',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Personal Achievements',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://leetcode.com/static/images/LeetCode_Sharing.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.45,
                    ),
                  ),
                  Card(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://media.geeksforgeeks.org/wp-content/uploads/20220219163921/gfglogo-300x300.png"),
                            fit: BoxFit.fitWidth),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.45,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton.extended(
                    onPressed: () {
                      const link = 'https://leetcode.com/Sisodia_Dhruv12/';
                      launchUrl(
                        Uri.parse(link),
                        mode: LaunchMode.inAppWebView,
                      );
                    },
                    backgroundColor: Colors.white,
                    label: Text('Show Profile'),
                  ),
                  FloatingActionButton.extended(
                    onPressed: () {
                      const link = 'https://auth.geeksforgeeks.org/user/sisodiadivyank/practice/';
                      launchUrl(
                        Uri.parse(link),
                        mode: LaunchMode.inAppWebView,
                      );
                    },
                    backgroundColor: Colors.white,
                    label: Text('Show Profile'),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              const Divider(color: Colors.white,),
              const SizedBox(height: 15,),
              const Text(
                'Social Contributions',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Member of Cosmic Society for Bussiness and Research',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
