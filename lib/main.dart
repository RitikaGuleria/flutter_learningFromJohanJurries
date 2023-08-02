import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ProfileUI());

}


// class ListApp extends StatelessWidget {
//   ListApp({super.key});
//
//   var widgets= [ListTile(
//     onTap: (){Text("Hello",);},
//     leading: Text("R",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300),),
//     title: Text("Ritika Guleria"),
//     subtitle: Text("Bowler"),
//     trailing: Text("wickets",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300),),
//   ),
//     ListTile(
//     onTap: (){Text("Hello",);},
//     leading: Text("A",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300),),
//     title: Text("Abhishek Choudhary"),
//     subtitle: Text("Bowler"),
//     trailing: Text("wickets",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300),),
//   )];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("ListView"),),
//         body: Center(
//           child: Column(
//             children: [
//               Container(
//                 height: 200,
//                 child: ListView.builder(itemCount:widgets.length,itemBuilder: (context,index){
//                   return widgets[index];
//                 }),
//
//               ),
//               Text("Hello World!!!",style: TextStyle(fontSize: 40,color: Colors.blue),)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// class ListApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("ListView in Flutter"),),
//         body: Column(
//             children: [
//               Container(
//                 height: 600,
//                 child: ListView(
//                   scrollDirection: Axis.vertical,
//                   padding: EdgeInsets.all(10),
//                   children: [
//                     Image.network("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
//                       loadingBuilder: (context,child,loadingProcess){
//                       if(loadingProcess==null) return child;
//                       return Center(
//                         child: Text("Loading..."),
//                       );
//                     },),
//                     Image.asset("assets/images/nature.jpg"),
//                     SizedBox(height: 20,),
//                     Image(image: AssetImage("assets/images/nature.jpg"),),
//                     SizedBox(width: 10,),
//                     Text("Abhishek",style: TextStyle(fontSize: 30,color: Colors.blue),),
//                     SizedBox(width: 10,),
//                     Text("Riya",style: TextStyle(fontSize: 30,color: Colors.blue),),
//                     SizedBox(width: 10,),
//                     Text("Shiva",style: TextStyle(fontSize: 30,color: Colors.blue),),
//                     SizedBox(width: 10,),
//                     Text("Abhireet",style: TextStyle(fontSize: 30,color: Colors.blue),),
//                     SizedBox(width: 10,),
//                     Text("Laddo",style: TextStyle(fontSize: 30,color: Colors.blue),),
//                     SizedBox(width: 10,),
//                     Text("Bubo",style: TextStyle(fontSize: 30,color: Colors.blue),),
//                     SizedBox(width: 10,),
//                     Text("Cutto",style: TextStyle(fontSize: 30,color: Colors.blue),),
//                     SizedBox(width: 10,),
//                     Text("Abhi Ultra Pro Max",style: TextStyle(fontSize: 30,color: Colors.blue),),
//                     SizedBox(width: 10,),
//                     Text("God bless us!",style: TextStyle(fontSize: 30,color: Colors.blue),),
//                     SizedBox(width: 10,),
//                   ],
//                 ),
//               ),
//               Text("Ritika",style: TextStyle(fontSize: 60,color: Colors.blue),),
//             ],
//         )
//         ),
//       );
//   }
// }


class ProfileUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: [
            Positioned(top:50,left:20,child: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
            Positioned(top: 50,right: 20,child: Icon(Icons.settings,color:  Colors.white,size: 30,),),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(radius:80,backgroundImage: AssetImage('assets/images/shiva.jpg'),),
                    SizedBox(height: 20,),
                    Text("Lord Shiva",style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24
                    ),),
                    SizedBox(height: 20,),
                    Text("shiva@gmail.com",style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(color: Colors.yellow[400], borderRadius: BorderRadius.all(Radius.circular(20)),),
                      height: 50,
                      width: 500,
                      child: Center(
                        child: Text("Upgrade to Premium",style: GoogleFonts.lato(
                            fontSize: 18,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    NewWidget(text: "Your order history", icon: Icons.shopping_bag_outlined, arrowShown: true),
                    SizedBox(height: 20,),
                    NewWidget(text: "Help and support", icon: Icons.help_outline, arrowShown: true),
                    SizedBox(height: 20,),
                    NewWidget(text: "Load gift voucher", icon: Icons.card_giftcard, arrowShown: true),
                    SizedBox(height: 20,),
                    NewWidget(text: "Log out", icon: Icons.logout, arrowShown: false),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  NewWidget({required this.text,required this.icon,required this.arrowShown});
  final String text;
  final IconData icon;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[800],borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 50,
      width: 500,
      child: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                  icon,size: 35,color: Colors.white,
              ),
            ),
            SizedBox(width: 20,),
            Text(text,style: GoogleFonts.lato(
              color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400,
            ),),
            SizedBox(width: 20,),
            arrowShown ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_forward,color: Colors.white,size: 35,),
            ) : Container(),
          ],
        ) ,
      ),

    );
  }
}
