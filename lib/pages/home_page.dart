import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> listItem = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_6.jpg',
    'assets/images/image_7.jpg',
    'assets/images/image_8.jpg',
  ];

  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             Icon(Icons.star_border, color: Colors.yellow, size: 30,),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Apple Products", style: TextStyle(color: Colors.white),),
        actions: [
          Padding(
            padding:const EdgeInsets.all(10),
            child: Container(
              height: 36,
              width: 30,
              decoration: BoxDecoration(
                color:Colors.grey[800],
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Center(
                child: Text("8"),
              ),
            ),
          )
        ],
      ),
      body:Container(
        padding:const EdgeInsets.all(10),
        child: Column(
          children: [
            // #header
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:const DecorationImage(
                  image: AssetImage("assets/images/image_3.png"),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.01)
                    ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Lifestyle sale", style: TextStyle(color: Colors.white, fontSize: 30),),
                    const SizedBox(height: 30,),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text("Shop Now", style: TextStyle(color: Colors.grey[900]),),
                      ),
                    ),
                    const SizedBox(height: 30,)
                  ],
                ),
              ),
              
            ),

            const SizedBox(height: 20,),
            // #body

            Expanded(
              child:GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing:10,
                crossAxisCount: 2,
                children: listItem.map((item) => cellOfList(item)).toList(),
              )
            )
          ],
        ),
      ),

      drawer: Drawer(
        child: Column(

        ),
      )
    );
  }
}