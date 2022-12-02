import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ContactList extends StatefulWidget {
  const ContactList({ Key? key }) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}
class _ContactListState extends State<ContactList> {

  var cont_list=[
    {'id':'1','Name':'Molay','Mail':'molay@gmail.com'},
    {'id':'2','Name':'Siam','Mail':'Siam@gmail.com'},
    {'id':'3','Name':'Amit','Mail':'Amit@gmail.com'},
    {'id':'4','Name':'Roy','Mail':'Roy.molay@gmail.com'},
    {'id':'5','Name':'Soumitra','Mail':'soumitra.molay@gmail.com'},
    {'id':'6','Name':'Nahid','Mail':'Nahid.molay@gmail.com'},
    {'id':'7','Name':'Rabbe','Mail':'Rabbe.molay@gmail.com'},
    {'id':'8','Name':'Shaker','Mail':'Shaker.molay@gmail.com'},
    {'id':'9','Name':'Zahid','Mail':'Zahid.molay@gmail.com'},
    {'id':'10','Name':'Palash','Mail':'Palash.molay@gmail.com'},
    {'id':'11','Name':'Rokib','Mail':'Rokib.molay@gmail.com'},
    {'id':'12','Name':'Sourav','Mail':'Sourav.molay@gmail.com'},
    {'id':'13','Name':'Pranto','Mail':'Pranto.molay@gmail.com'},
    {'id':'14','Name':'Tanvir','Mail':'Tanvir.molay@gmail.com'},
    {'id':'15','Name':'Ashik','Mail':'Ashik.molay@gmail.com'},
    {'id':'16','Name':'Akash','Mail':'Akash.molay@gmail.com'},
    
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Color.fromARGB(255, 5, 85, 105),

        leading: IconButton(
            onPressed: () {
              // Navigator.of(context).pop();
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),


        title: Text("Contact  List",style: GoogleFonts.abrilFatface(fontSize: 23,color: Color.fromARGB(255, 240, 225, 224)), ),
        actions: [
          SizedBox( width: 40,
            child: Icon(Icons.more_vert,size: 20,color: Color.fromARGB(255, 238, 235, 240),)),
        ],
        ),


backgroundColor: Color.fromARGB(255, 182, 177, 175),
       
       body: ListView.builder(
         itemCount: cont_list.length,
         itemBuilder:(context, index){
        //var child;
        return Column(
           children: [
             
             
           
            Container(
              
              
              height: 65,width: double.infinity, 
            decoration: BoxDecoration(color: Color.fromARGB(255, 11, 22, 11),borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(70),topRight: Radius.circular(70),bottomRight: Radius.circular(5)),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],),
    
              child: ListTile(
                
                
               leading: CircleAvatar(child: Text("${cont_list[index]['Name']![0]}",style: GoogleFonts.abrilFatface(fontSize: 20,color: Colors.white),)),
              title: Text("${cont_list[index]['Name']}",style: GoogleFonts.abrilFatface(fontSize: 18,color: Colors.white),),
              subtitle: Text("${cont_list[index]['Mail']}",style: GoogleFonts.roboto(fontSize: 10,color: Colors.white),),
                trailing: Icon(Icons.people_alt_sharp,color: Colors.white,),),
                 ),
           ],
         );
         
       }),
    );
  }
}
//height: 25,width: double.infinity,
       //          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(70))),
      /* 
      title: Text("${cont_list[index]['Name']}"),
               subtitle: Text("${cont_list[index]['Mail']}"),
                 trailing: Icon(Icons.people_alt_sharp),
               
                 */