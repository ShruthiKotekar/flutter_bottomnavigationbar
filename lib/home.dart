import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        SizedBox(height: 80,),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(color: Color.fromARGB(255, 113, 228, 236),
            borderRadius: BorderRadius.circular(10)),
             child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Total Balance",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                 Text("₹ 30,000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
               ],
             ),
           ),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Container(
                width: 175,
                height: 174,
               child: Card(
                 clipBehavior: Clip.antiAliasWithSaveLayer,
                 child: Column(
                   children: [
                     SizedBox(
                      width: 175,
                      height: 110,
                      child: Image.network("https://cdn.pixabay.com/photo/2020/08/30/20/02/money-5530537__340.png",fit: BoxFit.fill),
                    
                      ),
                         SizedBox(height: 16,),
                         Column(
                          children: [
                     Text("Income"),
                     Text("₹ 60,000"),
                          ],
                         )
                   
                   
                   ],
                 ),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(8),),
             ),
                 Container(
                width: 175,
              height: 174,
               child: Card(
                 clipBehavior: Clip.antiAliasWithSaveLayer,
                 child: Column(
                   children: [
                     SizedBox(
                      width: 175,
                      height: 110,
                      child: Image.network("https://cdn.pixabay.com/photo/2022/05/15/11/53/no-money-7197328__340.png",fit: BoxFit.fill),
                    
                      ),
                         SizedBox(height: 16,),
                         Column(
                          children: [
                     Text("Expense"),
                     Text("₹ 50,000"),
                          ],
                         )
                   
                   
                   ],
                 ),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(8),),
             ),
              
           ],
         ),
      
      
     

       ]),
    );
  }
}