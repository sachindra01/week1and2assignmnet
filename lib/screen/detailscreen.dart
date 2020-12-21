import 'package:flutter/material.dart';
import 'package:flutter_appstart/model/globaldata.dart';



class DetailsScreen extends StatefulWidget {
  final int id;
  String images;

  DetailsScreen({Key key, @required this.id, @required this.images})
      : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appbar(context),
        body: Container(
          child: Column(
            children: [


              SizedBox(
                height: 50,
              ),
              Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  "${globalList[widget.id].images}",
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("${globalList[widget.id].description}"),

              SizedBox(
                height: 180,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 10,

                      child: Icon(Icons.thumb_up_alt_sharp,color: Colors.white,size: 18,)),
                  CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 10,

                      child: Icon(Icons.favorite,color: Colors.white,size: 18,)),
                  Text('5.3k'),
                  SizedBox(
                    width: 150,
                  ),
                  Row(
                    children: [
                      Text('525 comments'),
                      Text('.'),
                      Text('187 shares')
                    ],

                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.thumb_up_outlined,color: Colors.grey,),
                        Text('Like')
                      ],


                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.mode_comment_outlined,color: Colors.grey,),
                        Text('comments')
                      ],


                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.share_outlined,color: Colors.grey,),
                        Text('share')
                      ],


                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.1,
              ),

            ],
          ),
        )
      ),
    );

    
  }

 Widget _appbar( BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      actions: [
        IconButton(icon:Icon(Icons.more_vert) , onPressed: (){},)
      ],
    );



 }



}

