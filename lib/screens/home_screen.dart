import 'package:flutter/material.dart';
import 'package:todo_app/screens/add_screen.dart';
import 'package:todo_app/screens/data.dart';
import 'package:todo_app/utils/container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          color: const Color(0xFF8A9DFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: constraints.maxWidth * 0.08,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Notes',
                        style: TextStyle(
                            fontSize: constraints.maxWidth * 0.07,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Have a Great Day',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: constraints.maxWidth * 0.05,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.12,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/p2.png'),
                    radius: constraints.maxWidth * 0.09,
                  ),
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(left: constraints.maxWidth * 0.08),
                child: Text(
                  'My Priority Task',
                  style: TextStyle(
                      fontSize: constraints.maxWidth * 0.06,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.04,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: constraints.maxWidth * 0.08),
                    child: CustomContainer(
                      icon: const Icon(
                        Icons.mobile_screen_share,
                        color: Color(0xFFC7C7C7),
                      ),
                      text1: '2 hours ago',
                      text2: 'Mobile App\nUI Design',
                      text3: 'using Figma\nother tools',
                      width:
                          constraints.maxWidth * 0.38, // Adjust width as needed
                      height: constraints.maxHeight *
                          0.3, // Adjust height as needed
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.1,
                  ),
                  CustomContainer(
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Color(0xFFC7C7C7),
                    ),
                    text1: '4 hours ago',
                    text2: 'Capture Sun\nRise Shots',
                    text3: 'Complete Gurushot\nchallenge',
                    width:
                        constraints.maxWidth * 0.38, // Adjust width as needed
                    height:
                        constraints.maxHeight * 0.3, // Adjust height as needed
                  ),
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.04,
              ),
              Padding(
                padding: EdgeInsets.only(left: constraints.maxWidth * 0.08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Tasks',
                      style: TextStyle(
                          fontSize: constraints.maxWidth * 0.06,
                          fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle),
                      color: Color.fromARGB(255, 8, 243, 16),
                      iconSize: constraints.maxWidth * 0.12,
                      onPressed: () async {
                        // Add your button press logic here
                        final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddScreen()));
                        if (result != null && result is Map) {
                          setState(() {
                            titleList.add(result['title']);
                            descriptionList.add(result['description']);
                          });
                        }
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: constraints.maxWidth * 0.08),
                    child: Text(
                      'Today\'s Task',
                      style: TextStyle(
                          fontSize: constraints.maxWidth * 0.04,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.06,
                  ),
                  Text(
                    'Weekly Task',
                    style: TextStyle(
                        fontSize: constraints.maxWidth * 0.04,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.06,
                  ),
                  Text(
                    'Monthly Task',
                    style: TextStyle(
                        fontSize: constraints.maxWidth * 0.04,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: titleList.length,
                    itemBuilder: (context, index) {
                      return Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          width: constraints.maxWidth * 0.9,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(28)),
                          child: ListTile(
                            title: Text(
                              titleList[index].toString(),
                              style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.05),
                            ),
                            subtitle: Text(
                              descriptionList[index].toString(),
                              style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.03),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        );
      }),
    );
  }
}
