import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_view_flutter/default/default.dart';
import 'package:list_view_flutter/pages/main_page.dart';
import 'package:list_view_flutter/routes/routes.dart';

void main() {
  runApp(NavRoutess());

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

//
// class ProfileUI extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey[900],
//         body: Stack(
//           children: [
//             Positioned(top:50,left:20,child: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
//             Positioned(top: 50,right: 20,child: Icon(Icons.settings,color:  Colors.white,size: 30,),),
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 20),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     CircleAvatar(radius:80,backgroundImage: AssetImage('assets/images/shiva.jpg'),),
//                     SizedBox(height: 20,),
//                     Text("Lord Shiva",style: GoogleFonts.lato(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 24
//                     ),),
//                     SizedBox(height: 20,),
//                     Text("shiva@gmail.com",style: GoogleFonts.lato(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                     ),),
//                     SizedBox(height: 20,),
//                     Container(
//                       decoration: BoxDecoration(color: Colors.yellow[400], borderRadius: BorderRadius.all(Radius.circular(20)),),
//                       height: 50,
//                       width: 500,
//                       child: Center(
//                         child: Text("Upgrade to Premium",style: GoogleFonts.lato(
//                             fontSize: 18,fontWeight: FontWeight.w500),),
//                       ),
//                     ),
//                     SizedBox(height: 20,),
//                     NewWidget(text: "Your order history", icon: Icons.shopping_bag_outlined, arrowShown: true),
//                     SizedBox(height: 20,),
//                     NewWidget(text: "Help and support", icon: Icons.help_outline, arrowShown: true),
//                     SizedBox(height: 20,),
//                     NewWidget(text: "Load gift voucher", icon: Icons.card_giftcard, arrowShown: true),
//                     SizedBox(height: 20,),
//                     NewWidget(text: "Log out", icon: Icons.logout, arrowShown: false),
//                     SizedBox(height: 20,),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         )
//       ),
//     );
//   }
// }
//
// class NewWidget extends StatelessWidget {
//   NewWidget({required this.text,required this.icon,required this.arrowShown});
//   final String text;
//   final IconData icon;
//   final bool arrowShown;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(color: Colors.grey[800],borderRadius: BorderRadius.all(Radius.circular(20))),
//       height: 50,
//       width: 500,
//       child: Center(
//         child:Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Icon(
//                   icon,size: 35,color: Colors.white,
//               ),
//             ),
//             SizedBox(width: 20,),
//             Text(text,style: GoogleFonts.lato(
//               color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400,
//             ),),
//             SizedBox(width: 20,),
//             arrowShown ? Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Icon(Icons.arrow_forward,color: Colors.white,size: 35,),
//             ) : Container(),
//           ],
//         ) ,
//       ),
//
//     );
//   }
// }


//Navigation Drawer

// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage(),
//     );
//   }
// }
//
// var indexClicked = 0;
//
// class MainPage extends StatefulWidget {
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//
//   final pages=[
//     Center(child: Text("Inbox"),),
//     Center(child: Text("Starred"),),
//     Center(child: Text("Sent"),),
//     Center(child: Text("Drafts"),),
//     Center(child: Text("Trash"),),
//     Center(child: Text("Spam"),),
//   ];
//
//   VoidCallback updateIndexWidget(int index){
//     return (){
//       setState(() {
//         indexClicked=index;
//       });
//       Navigator.pop(context);
//     };
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Navigation Bar Example"),),
//       body: pages[indexClicked],
//       drawer: Drawer
//       (
//         child: Column
//         (
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             DrawerHeader
//             (
//               decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/images/nature.jpg"),),),
//               padding: EdgeInsets.zero,
//               child: Container(
//                 child: Column(
//                   children: [
//                     SizedBox(height: 4,),
//                     CircleAvatar(backgroundImage: AssetImage("assets/images/shiva.jpg"),radius: 55,),
//                     SizedBox(height: 4,),
//                     Text("Shiva",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w800),),
//                     SizedBox(height: 2,),
//                     Text("shiva@gmail.com",style: GoogleFonts.sanchez(
//                       fontSize: 10, color: Colors.white, fontWeight: FontWeight.w700,
//                     ),),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ListView(
//                 padding: EdgeInsets.zero,
//                 children: [
//                   ListWidget(index: 0, onTap: updateIndexWidget(0),),
//                   ListWidget(index: 1,onTap: updateIndexWidget(1),),
//                   ListWidget(index: 2, onTap: updateIndexWidget(2),),
//                   ListWidget(index: 3, onTap: updateIndexWidget(3),),
//                   ListWidget(index: 4, onTap: updateIndexWidget(4),),
//                   ListWidget(index: 5, onTap: updateIndexWidget(5),),
//                 ],
//               ),
//             ),
//             SizedBox(height: 5,),
//             Divider(height: 1,thickness: 2,color: Colors.black,indent: 3,endIndent: 3,),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class ListWidget extends StatelessWidget {
//   const ListWidget({required this.index,required this.onTap});
//   final int index;
//   final VoidCallback onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: ListTile(
//         onTap: onTap,
//         selected: indexClicked==index,
//         selectedTileColor: Default.tileColor,
//         leading: Icon(Default.drawerItemIcon[index],size: 30,color: indexClicked == index ? Default.draweritemSelecetdColor : Default.draweritemColor ,),
//         title: Text(Default.drawerItemText[index],style: GoogleFonts.sanchez(fontSize: 20,fontWeight: FontWeight.w500,color: indexClicked==index ? Default.draweritemSelecetdColor : Default.draweritemColor),),
//       ),
//     );
//   }
// }

//--------------------------------------Responsive layout--------------------------------------------------------//

// class ResponisveStatelessLayout extends StatelessWidget {
//   const ResponisveStatelessLayout({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ResponsiveLayoutStateful(),
//     );
//   }
// }
//
// class ResponsiveLayoutStateful extends StatefulWidget {
//   const ResponsiveLayoutStateful({super.key});
//
//   @override
//   State<ResponsiveLayoutStateful> createState() => _ResponsiveLayoutStatefulState();
// }
//
// class _ResponsiveLayoutStatefulState extends State<ResponsiveLayoutStateful> {
//   @override
//   Widget build(BuildContext context)
//   {
//     //1st way
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//
//     //2nd way
//     Orientation orientation = MediaQuery.of(context).orientation;
//
//
//
//     return Scaffold(
//       appBar: AppBar(title: Text("Responsive Layout"),),
//       // body:  width > 480 ? Grid_Widget() : List_Widget(),
//        // body :  orientation == Orientation.portrait ? List_Widget() : Grid_Widget() ,
//       body: LayoutBuilder(
//         builder: (context,constraints){
//           print("Media : $width" );
//           print("Builder :${constraints.maxWidth}");
//           print("Media : $height" );
//           print("Builder :${constraints.maxHeight}");
//           if(constraints.maxWidth > 1200) {
//             return Grid_Widget(aspectRatio: 8,);
//           }
//           else if(constraints.maxWidth > 800)
//             {
//               return Grid_Widget(aspectRatio: 4);
//           }else{
//             return List_Widget();
//           }
//         },
//       ),
//     );
//   }
// }
//
// class List_Widget extends StatelessWidget {
//   const List_Widget({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(itemCount: 20,itemBuilder: (context,index){
//       return ListTile(
//         leading: Icon(Icons.person),
//         title: Text("Person ${index+1}"),
//         trailing: Icon(Icons.waves),
//       );
//     });
//   }
//
// }
// class Grid_Widget extends StatelessWidget {
//   const Grid_Widget({required this.aspectRatio});
//
//   final double aspectRatio;
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(crossAxisCount: 2,
//     childAspectRatio: aspectRatio,
//     children: List.generate(20, (index) {
//         return ListTile(
//           leading: Icon(Icons.person),
//           title: Text("Person ${index+1}"),
//           trailing: Icon(Icons.waves),
//         );
//       }),
//     );
//   }
//
// }


//------------------------------NAVIGATION-ROUTES----------------------------------------------------//
class NavRoutess extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.red[100],
      ),
      // theme: ThemeData(
      //   primaryColor: Colors.purple,
      //   scaffoldBackgroundColor: Colors.red[100],
      //   fontFamily: "Times New Roman",
      // ),
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}

