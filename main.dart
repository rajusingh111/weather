
import 'package:collegeproject/weather.dart';
import 'package:flutter/material.dart';
import 'package:collegeproject/loginpage.dart';

import 'FormPage.dart';
import 'MyFileScreen.dart';

void main() {
  runApp( const InstaClone());
}
class InstaClone extends StatelessWidget {
  const InstaClone({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home:  Weather(),
    );
  }
}
class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // leading: const Text("Insta"),
          title: Text("Instagram"),
          actions: [
          IconButton(onPressed: (){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No New Notifications")));
    },
      icon:  Icon(Icons.favorite_border_sharp),

    ),
    IconButton(onPressed: (){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No Chats to Display")));
    },
      icon:  Icon(Icons.chat),


    ),
          ],
      ),
        body: SingleChildScrollView(
        child: Column(

        children: [
        SingleChildScrollView(
        scrollDirection: axisDirectionToAxis(AxisDirection.left),
    child: Row(
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    //color: Colors.blue,
    //width: 4,
    )
    ),
    child:  CircleAvatar(
    radius: 40,
    backgroundImage: AssetImage('assets/Dice.jpg'),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    GestureDetector(
    onTap: (){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No Internet Connection")));
    },
    child: Container(
    color: Colors.blue,
    child: Icon(Icons.add_box))),
    ],
    )
    ],
    ),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.green,
    width: 2,
    )
    ),
    child:  CircleAvatar(
    radius: 40,
    backgroundImage: AssetImage('assets/hacker.jpg'),
    ),
    ),
    ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                )
            ),
            child:  CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/bike.jpeg'),
            ),
          ),
        ),
        Padding(
        padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                )
            ),
            child:  CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/Dice.jpg'),
            ),
          ),
        ),
        Padding(
        padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.green,
    width: 2,
    )
    ),
    child: CircleAvatar(
    radius: 40,
    backgroundImage: AssetImage('assets/Dice.jpg'),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.blue,
    width: 2,
    )
    ),
    child: CircleAvatar(
    radius: 40,
    backgroundImage: AssetImage('assets/Dice.jpg'),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.blue,
    width: 2,
    )
    ),
    child: CircleAvatar(
    radius: 40,
    backgroundImage: AssetImage('assets/Dice.jpg'),
    ),
    ),
    ),
        Padding(
        padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.blue,
    width: 2,
    )
    ),
    child: CircleAvatar(
    radius: 40,
    backgroundImage: AssetImage('assets/Dice.jpg'),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.green,
    width: 2,
    )
    ),
    child: CircleAvatar(
    radius: 40,
    backgroundImage: AssetImage('assets/Dice.jpg'),
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.blue,
    width: 2,
    )
    ),
    child: CircleAvatar(
    radius: 40,
    backgroundImage: AssetImage('assets/Dice.jpg'),
    ),
    ),
    ),
    ],
    ),
    ),
    Row(
    children: [

    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.green,
    width: 2,
    )
    ),
    child: CircleAvatar(
    radius: 20,
    backgroundImage: AssetImage('assets/sher.jpg'),
    ),
    ),
    ),
    Text("Sher",style: TextStyle(fontSize:15, fontWeight: FontWeight.bold ),),



    ],
    ),
    Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Container(
    height: 400,
    width: 700,
    child: Image.asset("assets/sher.jpg"),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.favorite_border_sharp),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.messenger_outline_sharp),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.share),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 190),
    child: IconButton(onPressed: (){},
    icon: Icon(Icons.collections_bookmark_sharp)),
    )
    ],
    ),
    ),
    ],
    ),
    Row(
    children: [

    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.blue,
    width: 2,
    )
    ),
    child: CircleAvatar(
    radius: 20,
    backgroundImage: AssetImage('assets/Dice.jpg'),
    ),
    ),
    ),
    Text("Devid", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),



    ],
    ),
    Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
      height: 400,
      width: 700,
      child: Image.asset("assets/me.jpg"),
    ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.favorite_border_sharp),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.messenger_outline_sharp),
        ),
        Padding(
        padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.share),
        ),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: IconButton(onPressed: (){},
                      icon: Icon(Icons.collections_bookmark_sharp)),
                )
              ],
          ),
        ),
    ],
    ),
        Row(
            children: [

        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.blue,
          width: 2,
        )
    ),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/bike.jpg'),
          ),
        ),
        ),
              Text("Ak47", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),



            ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
          height: 400,
          width: 700,
          child: Image.asset("assets/bike.jpg"),
        ),
        Padding(
        padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    color: Colors.blue,
    width: 2,
    )
    ),
    child: CircleAvatar(
    radius: 20,
    backgroundImage: AssetImage('assets/bike.jpg'),
    ),
    ),
    ),
    Text("Ak47", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),



    ],
    ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
          height: 400,
          width: 700,
          child: Image.asset("assets/bike.jpg"),
        ),
        Padding(
        padding: const EdgeInsets.all(8.0),
    child: Row(
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.favorite_border_sharp),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.messenger_outline_sharp),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.share),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 190),
    child: IconButton(onPressed: (){},
    icon: Icon(Icons.collections_bookmark_sharp)),
    )
    ],
    ),
    ),
    ],
    ),
      Row(
          children: [

      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.green,
              width: 2,
            )
        ),
        child: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/hacker.jpg'),
        ),
      ),
    ),
    Text("Rahul", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),



          ],
      ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
          height: 400,
          width: 700,
          child: Image.asset("assets/hacker.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.favorite_border_sharp),
        ),
        Padding(
        padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.messenger_outline_sharp),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Icon(Icons.share),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 190),
    child: IconButton(onPressed: (){},
    icon: Icon(Icons.collections_bookmark_sharp)),
    )
    ],
    ),
    ),
    ],
    ),

    ],
    ),
    ),
      bottomNavigationBar: Row(
          children: [
      Padding(
      padding: const EdgeInsets.all(15),
      child: Icon(Icons.home),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 40,right: 30),
    child: Icon(Icons.search),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 40,right: 30),
    child: Icon(Icons.add_box),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 30,right: 30),
    child:
    Icon(Icons.video_collection_outlined),
    ),
            Padding(
              padding: const EdgeInsets.only(left: 22,right: 0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      //color: Colors.blue,
                      //width: 2,
                    )
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/Dice.jpg'),
                ),
              ),
            ),

          ],
      ),
    );
  }
}
