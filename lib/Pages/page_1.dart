import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/providers/function_state.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController subjectcontroller = TextEditingController();
  TextEditingController todocontroller = TextEditingController();

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
                                                              4)))),
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
                                        context.read<Fstate>().;
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
                  itemCount: Fstate.taskDataList.length,
                  itemBuilder: (context, index) => Task(
                      onEdit: () {
                        return setState(
                          () {
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
                                                            BorderRadius
                                                                .circular(4)))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add))
                                  ],
                                );
                              },
                            );
                          },
                        );
                      },
                      notes: Fstate.taskDataList[index].notes,
                      number: index + 1,
                      taskname: Fstate.taskDataList[index].taskname,
                      onDelete: () {
                        setState(() {
                          Fstate.taskDataList.removeAt(index);
                        });
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
