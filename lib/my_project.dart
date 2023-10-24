import 'package:flutter/material.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
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
        backgroundColor: Colors.transparent,
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
                padding: const EdgeInsets.only(top: 150.0, left: 20.0, right: 20),
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      color:  Color.fromARGB(255, 107, 106, 106),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 210,
                    width: double.infinity,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Project Name',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Card(
                  child: Container(
                    decoration:const BoxDecoration(
                      color:  Color.fromARGB(255, 107, 106, 106),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 210,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      color:  Color.fromARGB(255, 107, 106, 106),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 210,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      color:  Color.fromARGB(255, 107, 106, 106),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 210,
                    width: double.infinity,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
