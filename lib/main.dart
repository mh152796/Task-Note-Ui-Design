import 'package:flutter/material.dart';
const text = '''In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.
 ''';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Details View',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          floatingActionButton: Container(
            margin: EdgeInsets.only(bottom: 30),
            child: FloatingActionButton(

              onPressed: () {  },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.add),
              ),
            ),
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.blue,

      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Task',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white
                ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 28,
                  child: Icon(Icons.woman, size: 35,),
                ),
              ],
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text('You have 3 task today',style: TextStyle(
                  color: Colors.white, fontSize: 18,
                ),)),
            SizedBox(height: MediaQuery.of(context).size.width/4,),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              clipBehavior: Clip.antiAlias,
              padding: EdgeInsets.all(5),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildContainerCard(context),
                  SizedBox(width: 5,),
                  buildContainerCard(context),
                  SizedBox(width: 5,),
                  buildContainerCard(context),
                  SizedBox(width: 5,),
                  buildContainerCard(context),
                  SizedBox(width: 5,),
                  buildContainerCard(context),
                  SizedBox(width: 5,),
                  buildContainerCard(context),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Container buildContainerCard(BuildContext context) {
    return Container(
            height: MediaQuery.of(context).size.height/2.5,
            width: MediaQuery.of(context).size.width/2,
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(15),
             border: Border.all(
               width: 1,
               color: Colors.grey
             )
             // shape: BoxShape.circle
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Walk', style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text('Walk for 30 minutes in a new rural area', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                  SizedBox(height: 20,),
                  Text(text),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("3 Comments", style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_forward, color: Colors.blue, size: 28,)
                    ],
                  )
                ],
              ),
            ),
          );
  }
}
