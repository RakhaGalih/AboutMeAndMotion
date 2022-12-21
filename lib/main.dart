import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: About(),
    );
  }
}

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool _motion = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(85),
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(24.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 3, color: Colors.black12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _motion = true;
                      });
                    },
                    child: Column(
                      children: [
                        const Text('About Motion'),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 5,
                          width: 100,
                          color: (_motion) ? Colors.black : Colors.black12,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _motion = false;
                      });
                    },
                    child: Column(
                      children: [
                        const Text('About Me'),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 5,
                          width: 100,
                          color: (_motion) ? Colors.black12 : Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: (_motion) ? const AboutMotion() : const AboutMe(),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.black12,
                      image: DecorationImage(
                        image: AssetImage(
                          'images/foto.png',
                        ),
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Rakha Galih Nugaraha Sukma'),
                    Text('S1 Rekayasa Perangkat Lunak'),
                    Text('SE-46-02'),
                    Text('2022')
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
              'Hi, my name is Rakha Galih Nugraha Sukma. You can  call me Rakha. I’m a student who have plenty of interest,  especially with something new. I can work with team or individually well. '),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text('Unity (C#)'),
              const Spacer(),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Text('Flutter (dart)'),
              const Spacer(),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Text('HTML & CSS'),
              const Spacer(),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Text('Figma'),
              const Spacer(),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
              'My view on Motion Lab is that Motion Lab is the best lab at Telkom University. excellent material delivery and a very solid team. Overall, I love it so much! 5/5 ⭐')
        ],
      ),
    );
  }
}

class AboutMotion extends StatelessWidget {
  const AboutMotion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Image.asset('images/motion.jpeg',),
          const SizedBox(
            height: 20,
          ),
          const Text(
              'The Mobile Innovation Laboratory or commonly known as the MoTion Lab is one of the newest laboratories in the Faculty of Informatics under the auspices of KK SIDE. MoTion Lab focuses on the field of Mobile Application Development. The purpose of establishing MoTion Lab is to develop Mobile Applications on Android, iOS, and also Microsoft. To support the objectives of the MoTion Lab, MoTion Lab has 3 areas of expertise, namely as follows:'),
          const SizedBox(
            height: 20,
          ),
          Row(children: [
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('Mobile Programming [MP]'),
          ]),
          const SizedBox(
            height: 5,
          ),
          Row(children: [
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('UI/UX Design [UI/UX]'),
          ]),
          const SizedBox(
            height: 5,
          ),
          Row(children: [
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
                child: Text(
              'Digital Business & Project Management [DB/PM]',
            )),
          ]),
        ],
      ),
    );
  }
}
