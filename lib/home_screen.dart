import 'package:flutter/material.dart';

import 'package:ui_app/course_screen.dart';

import 'bottom_navigatorbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page',style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.green,
            ),
            onPressed: () {
              // Add your notification logic here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const Row(
            children: [
              Text(
                'Choose your courses ',
                style: TextStyle(fontSize:20,color: Colors.black),
              ),
              Text(
                'right away',
                style: TextStyle(color: Colors.lightGreen),
              ),
            ],
          ),
          const SizedBox(height: 16,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 6,
                    spreadRadius: 3,
                  ),
                ]),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search your grads, course,training',
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 25,
                  )),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.yellow),
                  child: const Icon(
                    Icons.file_copy,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                  child: const Icon(
                    Icons.video_call,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration:
                      const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                  child: const Icon(
                    Icons.padding_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Category'),
                Text('Boutique Class'),
                Text('Free Course'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.redAccent),
                  child: const Icon(
                    Icons.store,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.purple),
                  child: const Icon(
                    Icons.video_camera_back,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                  child: const Icon(
                    Icons.bar_chart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bookstore'),
                Text('Live Course'),
                Text('Leaderboard'),
              ],
            ),
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 2,
              ),
              Text(
                'Recommended Course',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text('more',style: TextStyle(fontSize: 20),),

            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              const Text('you may also like',style: TextStyle(fontSize: 20),),
              const SizedBox(
                width: 4,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(child: Text('6')),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 8,
                ),
                buildCard(context,
                    image: const AssetImage('assets/images/image1.png'),
                    title: "Morning Text Book",
                    subTitle: "8.6"),
                const SizedBox(
                  width: 8,
                ),
                buildCard(context,
                    image: const AssetImage('assets/images/image2.png'),
                    title: " English Reading",
                    subTitle: "8.0"),
                const SizedBox(
                  width: 8,
                ),
                buildCard(context,
                    image: const AssetImage('assets/images/image3.png'),
                    title: "Illustrator",
                    subTitle: "7.5"),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: const BottoomNavigatorBarScreen(),
    );
  }

  InkWell buildCard(context,
      {required AssetImage image,
      required String title,
      required String subTitle}) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const CourseScreen();
          },
        ));
      },
      child: Card(
        child: Column(
          children: [
            Container(
              height: 180,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue,
                      image: DecorationImage(
                        image: image,
                      ),
                    ),
                  ),
                  Text(title),
                  Text(subTitle),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.amberAccent,
                      ),
                      const Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.amberAccent,
                      ),
                      const Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.amberAccent,
                      ),
                      const Icon(
                        Icons.star,
                        size: 12,
                      ),
                      const Icon(
                        Icons.star,
                        size: 12,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                      const Column(
                        children: [],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
