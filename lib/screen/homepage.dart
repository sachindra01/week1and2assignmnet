import 'package:flutter/material.dart';
import 'package:flutter_appstart/model/globaldata.dart';
import 'package:flutter_appstart/screen/newcontainer.dart';

import 'detailcontainer.dart';
import 'detailscreen.dart';
class Homepage extends StatefulWidget {

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _myappbar(),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                  height: 50,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 18,
                            child: ClipOval(
                              child: Image.network(
                                'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-9/56598198_103142347543204_8599306429683204096_n.jpg?_nc_cat=108&ccb=2&_nc_sid=e3f864&_nc_ohc=rWiplyRiD9IAX_nzSHM&_nc_ht=scontent.fktm8-1.fna&oh=8bd884f634782a5b841c8cfccafdf3e5&oe=600512FF',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("What 's on your mind ?",style: TextStyle(
                              fontSize: 19,color: Colors.grey

                          ),),
                          VerticalDivider(
                            indent:20,
                            endIndent: 18,
                            thickness: 10,
                            color: Color(0xFFF6F4F4),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          IconButton(
                            iconSize: 20,
                            icon: Icon(
                              Icons.backup_table_sharp,color: Colors.blue,
                            ), onPressed: (){},)


                        ],
                      ),

                    ],
                  )
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,

                itemCount: globalList.length,
                itemBuilder: (ctx, i) {
                  return detailContainer(


                    description: globalList[i].description,
                    images: globalList[i].images,
                    pic: globalList[i].pic,
                    title: globalList[i].title,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => DetailsScreen(id: i),
                      ),
                    ),
                  );

                },




              ),

            ],
          ),
        ),
      ),
    );
  }



 Widget _mySearchbar() {

   return Container(
     child: Column(
       children: [
     Padding(
     padding: const EdgeInsets.only(bottom:8.0),
     child: TextField(
       textAlign: TextAlign.center,
       decoration: InputDecoration(
         prefixIcon: Icon(
           Icons.search,
           color: Colors.blue,

         ),
         hintText: "Search",hintStyle: TextStyle(
           color: Colors.blue
       ),
         enabled: true,
         filled: true,
         fillColor: Colors.white,
       ),
     ),
   ),
         Row(


           children: [
             Card(child: IconButton(icon: Icon(Icons.featured_play_list_outlined),color: Colors.blue, onPressed: (){},)),
             Card(child: IconButton(icon: Icon(Icons.people_alt_outlined),color: Colors.blue, onPressed: (){},)),
             Card(child: IconButton(icon: Icon(Icons.video_collection_outlined),color: Colors.blue, onPressed: (){},)),
             Card(child: IconButton(icon: Icon(Icons.notifications_none),color: Colors.blue, onPressed: (){},)),


           ],

         ),
       ],
     ),
   );
 }
 Widget _myappbar(){
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 100,
      leading: Padding(
        padding: const EdgeInsets.only(bottom:60.0),
        child: IconButton(
          icon: CircleAvatar(

              radius: 10,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person,color: Colors.white,size: 18,)),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom:60.0),
          child: IconButton(icon: Icon(Icons.menu),color: Colors.blue, onPressed: (){},),
        )
      ],
      title: _mySearchbar(),

    );

 }


  }

