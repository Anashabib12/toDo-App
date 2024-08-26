import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  addTitle() {
    if (titleController.text.isNotEmpty ||
        descriptionController.text.isNotEmpty) {
      String title = titleController.text;
      String description = descriptionController.text;
      titleController.clear();
      descriptionController.clear();
      Navigator.pop(context, {'title': title, 'description': description});
    }
  }

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
                height: constraints.maxHeight * 0.09,
              ),
              Row(
                children: [
                  SizedBox(
                    width: constraints.maxWidth * 0.08,
                  ),
                  Text(
                    'Create new Task',
                    style: TextStyle(
                        fontSize: constraints.maxWidth * 0.07,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.15,
                  ),
                  CircleAvatar(
                    backgroundImage: const AssetImage('assets/p2.png'),
                    radius: constraints.maxWidth * 0.09,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.09,
                    right: constraints.maxWidth * 0.3,
                    top: constraints.maxWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                        fontSize: constraints.maxWidth * 0.055,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'To',
                      style: TextStyle(
                        fontSize: constraints.maxWidth * 0.055,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.09,
                    right: constraints.maxWidth * 0.053,
                    top: constraints.maxWidth * 0.027),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.3,
                      height: constraints.maxWidth * 0.1,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '10:00 A.M',
                          style: TextStyle(
                            fontSize: constraints.maxWidth * 0.048,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * 0.3,
                      height: constraints.maxWidth * 0.1,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '04:30 P.M',
                          style: TextStyle(
                            fontSize: constraints.maxWidth * 0.048,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxWidth * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.09,
                    right: constraints.maxWidth * 0.09,
                    top: constraints.maxWidth * 0.035),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(fontSize: constraints.maxWidth * 0.055),
                    ),
                    SizedBox(
                      height: constraints.maxWidth * 0.015,
                    ),
                    TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            )))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.09,
                    right: constraints.maxWidth * 0.09,
                    top: constraints.maxWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(fontSize: constraints.maxWidth * 0.055),
                    ),
                    SizedBox(
                      height: constraints.maxWidth * 0.015,
                    ),
                    TextField(
                        controller: descriptionController,
                        maxLines: 3,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.09,
                    // right: constraints.maxWidth * 0.09,
                    top: constraints.maxWidth * 0.05),
                child: Text(
                  'Choose Priority',
                  style: TextStyle(
                      fontSize: constraints.maxWidth * 0.06,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: constraints.maxWidth * 0.09,
                    height: constraints.maxHeight * 0.09,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.25,
                    height: constraints.maxWidth * 0.08,
                    decoration: BoxDecoration(
                        color: Color(0xFFDD1515),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'High',
                        style:
                            TextStyle(fontSize: constraints.maxWidth * 0.056),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.09,
                    height: constraints.maxHeight * 0.09,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.25,
                    height: constraints.maxWidth * 0.08,
                    decoration: BoxDecoration(
                        color: Color(0xFFA6A6A6),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Medium',
                        style:
                            TextStyle(fontSize: constraints.maxWidth * 0.056),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.05,
                    height: constraints.maxHeight * 0.09,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.25,
                    height: constraints.maxWidth * 0.08,
                    decoration: BoxDecoration(
                        color: Color(0xFF79AF92),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Low',
                        style:
                            TextStyle(fontSize: constraints.maxWidth * 0.056),
                      ),
                    ),
                  )
                ],
              ),
              Center(
                child: SizedBox(
                  width: constraints.maxWidth * 0.85,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF79AF92)),
                      onPressed: addTitle,
                      child: const Text('Add')),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
