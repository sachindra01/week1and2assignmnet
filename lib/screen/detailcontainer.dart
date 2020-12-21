import 'package:flutter/material.dart';

class detailContainer extends StatefulWidget {

  detailContainer({

    Key key,
    @required this.images,
    @required this.title,
    @required this.pic,

    @required this.description,

    @required this.onTap,
  }) : super(key: key);
  String images, title, location, description, salary,pic;
  Function onTap;


  @override
  _detailContainerState createState() => _detailContainerState();
}

class _detailContainerState extends State<detailContainer> {

  @override
  Widget build(BuildContext context) {
    return Container(



      child:Column(
        children: [

          Card(
            elevation: 3,
            child: Container(
              color: Colors.white,
              height: 380,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 18,

                        child: ClipOval(
                          child: Image.network("${widget.pic}"
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("${widget.title} ",style: TextStyle(
                          fontSize: 20,
                          fontWeight:FontWeight.bold
                      ),),
                      Icon(Icons.verified,color: Colors.blue,size: 10,),
                      Text('updated their cover',style: TextStyle(
                          fontSize: 15

                      ),),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.more_horiz,size: 30,color: Colors.blueGrey,)



                    ],
                  ),
                  Column(
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text('photo',style: TextStyle(
                            fontSize: 15
                        ),),


                      ],),

                    ],
                  ),

                  Column(
                    children: [
                      Text(
                          "${widget.description}",

                          style:TextStyle(
                              fontSize: 15.0
                          )


                      ),
                    ],
                  ),
                  Card(
                    elevation: 5,

                    child: GestureDetector(
                      onTap: widget.onTap,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(
                          "${widget.images}",
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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

                      Row(
                        children: [
                          Icon(Icons.thumb_up_outlined,color: Colors.grey,),
                          Text('Like')
                        ],


                      ),
                      Row(
                        children: [
                          Icon(Icons.mode_comment_outlined,color: Colors.grey,),
                          Text('comments')
                        ],


                      ),
                      Row(
                        children: [
                          Icon(Icons.share_outlined,color: Colors.grey,),
                          Text('share')
                        ],


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
            ),
          ),


        ],
      )

    );
  }
}
