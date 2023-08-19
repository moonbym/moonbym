// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController subjectcontroller = TextEditingController();
  TextEditingController todocontroller = TextEditingController();

  List<TasksData> tasksdataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Menu",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              hoverColor: Colors.transparent,
              onPressed: () {},
              icon: const Icon(
                Icons.access_alarm,
                color: Colors.black,
              )),
          IconButton(
              hoverColor: Colors.transparent,
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
      ),
      drawer: const Drawer(
        child: Column(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 2 - 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "All Folders",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.sizeOf(context).height / 150)),
                      Row(children: [
                        const Text(
                          "This Month  ",
                          style: TextStyle(fontSize: 10),
                        ),
                        IconButton(
                            hoverColor: Colors.transparent,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.calendar_month,
                              size: 12,
                            ))
                      ])
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 2 - 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        hoverColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(6)),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Form(
                                  child: SizedBox(
                                    height: 200,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: TextFormField(
                                            controller: subjectcontroller,
                                            maxLengthEnforcement:
                                                MaxLengthEnforcement
                                                    .truncateAfterCompositionEnds,
                                            maxLength: 10,
                                            decoration: InputDecoration(
                                                labelText: "subject",
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4))),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          child: TextFormField(
                                            controller: todocontroller,
                                            maxLines: 4,
                                            decoration: InputDecoration(
                                                labelText: "Todo",
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4))),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                actions: [
                                  IconButton(
                                      onPressed: () {
                                        tasksdataList.add(
                                          TasksData(
                                              notes: "notes",
                                              number: 1,
                                              taskname: subjectcontroller.text),
                                        );

                                        setState(() {});
                                      },
                                      icon: const Icon(Icons.add))
                                ],
                              );
                            },
                          );
                        },
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height / 50),
            Expanded(
              child: ListView.builder(
                  itemCount: tasksdataList.length,
                  itemBuilder: (context, index) => Task(
                      onEdit: () {
                        return setState(() {
                          ;
                          AlertDialog(
                            content: Column(
                              children: [Text("data")],
                            ),
                          );
                        });
                      },
                      notes: tasksdataList[index].notes,
                      number: index + 1,
                      taskname: tasksdataList[index].taskname,
                      onDelete: () {
                        setState(() {
                          tasksdataList.removeAt(index);
                        });
                      })),
            ),
          ],
        ),
      ),
    );
  }
}

class Task extends StatelessWidget {
  const Task({
    required this.notes,
    required this.number,
    required this.taskname,
    required this.onDelete,
    required this.onEdit,
    super.key,
  });
  final String taskname, notes;
  final int number;
  final Function()? onDelete, onEdit;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: SizedBox(),
        ),
        Flexible(flex: 2, child: Text(number.toString())),
        const Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: SizedBox(),
        ),
        Flexible(
            flex: 30,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        taskname,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.sizeOf(context).height / 30)),
                      Text("$notes notes"),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.sizeOf(context).height / 90)),
                      const Divider()
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        alignment: Alignment.bottomLeft,
                        hoverColor: Colors.transparent,
                        onPressed: onDelete,
                        icon: const Icon(Icons.remove),
                      ),
                      IconButton(
                        alignment: Alignment.bottomRight,
                        hoverColor: Colors.transparent,
                        onPressed: onEdit,
                        icon: const Icon(Icons.edit),
                      ),
                      const Divider()
                    ],
                  ),
                )
              ],
            )),
      ],
    );
  }
}

class TasksData {
  TasksData(
      {required this.number, required this.notes, required this.taskname});
  final String notes, taskname;
  final int number;
}
