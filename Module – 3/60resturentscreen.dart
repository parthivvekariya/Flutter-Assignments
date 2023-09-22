

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '60_2dish.dart';

class screen extends StatefulWidget {
  @override
  menuState createState() => menuState();
}

class menuState extends State<screen> {
  bool _color = false;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
            width: 10,
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back)),
                Spacer(),
                IconButton(
                    padding: EdgeInsets.only(left: 300),
                    iconSize: 30,
                    onPressed: () {},
                    icon: Icon(Icons.search_rounded))
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white70,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Restaurant",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "20-30min",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "2.5km   Restaurant",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text("orange sandwiches is delicious",style: TextStyle(fontSize: 15),),
                          IconButton(
                            padding: EdgeInsets.only(left: 90),
                            onPressed: () {
                              toggleLike();
                            },
                            icon: Icon(
                              isLiked ? Icons.star : Icons.star_border,
                              color: isLiked ? Colors.red : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                // Recomend
                Container(
                  margin: const EdgeInsets.all(12.5),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: _color ? Colors.orangeAccent : Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      toastmsg();
                    },
                    child: Text("Recomend", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                // Populer
                Container(
                  margin: const EdgeInsets.all(12.5),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: _color ? Colors.deepOrangeAccent : Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      toastmsg();
                    },
                    child: Text("Populer", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                // Noodles
                Container(
                  margin: const EdgeInsets.all(12.5),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: _color ? Colors.deepOrangeAccent : Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      toastmsg();
                    },
                    child: Text("Noodles", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(12.5),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: _color ? Colors.deepOrangeAccent : Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      toastmsg();
                    },
                    child: Text("Pizza", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          // Product Containers
          buildProductContainer(
            "Soba Soup",
            "No. 1 in Sales",
            "120",
            "https://roasting-conflict.000webhostapp.com/images/sobasoup.jpeg",
          ),
          buildProductContainer(
            "Sai Ua Samun Phrai",
            "No. 2 in Sales",
            "150",
            "https://roasting-conflict.000webhostapp.com/images/sei%20ua%20samun%20phrai.jpeg",
          ),
          buildProductContainer(
            "Ratatouille Pasta",
            "No. 3 in Sales",
            "180",
            "https://roasting-conflict.000webhostapp.com/images/ratatouille%20pasta.jpeg",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton
        (
        backgroundColor: Colors.orange,
        child: Icon(Icons.shopping_bag_outlined,color: Colors.black),
        onPressed: ()
        {

        },
      ),
    );
  }

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void toastmsg() {
    Fluttertoast.showToast(
      msg: "Welcome",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.yellow,
    );
  }

  Widget buildProductContainer(
      String productName,
      String subtitle,
      String price,
      String imageUrl,
      ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(imageUrl),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                "Price: \$$price",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              // Add your logic for adding the product to cart or handling taps here.
              Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => dish()));
            },
            icon: Icon(
              Icons.navigate_next_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}




















//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
//
// class screen extends StatefulWidget
// {
//
//
//   @override
//   menuState createState() => menuState();
// }
//
// class menuState extends State<screen>
// {
//
//   bool _color = false;
//   bool isLiked = false;
//   @override
//   Widget build(BuildContext context)
//   {
//
//     //"https://roasting-conflict.000webhostapp.com/images/sobasoup.jpeg"
//     //"https://roasting-conflict.000webhostapp.com/images/sei%20ua%20samun%20phrai.jpeg"
//     //"https://roasting-conflict.000webhostapp.com/images/ratatouille%20pasta.jpeg"
//
//     return Scaffold(
//       body: Column
//         (
//         children:
//         [
//           SizedBox(height: 30,width: 10,),
//          Container(
//            child: Row(
//              children: [
//                IconButton(
//                    iconSize: 30,
//                    onPressed: ()
//                    {
//
//                    },
//                    icon: Icon(Icons.arrow_back)),
//                Spacer(),
//                IconButton(
//                    padding: EdgeInsets.only(left: 300),
//                    iconSize: 30,
//                    onPressed: ()
//                    {
//
//                    },
//                    icon: Icon(Icons.search_rounded))
//              ],
//            ),
//          ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             color: Colors.white70,
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(left: 20),
//                   child: Row(
//                     children: [
//                       Text
//                         (
//                         "Restaurant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10,),
//                 Row(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(5),
//                       decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),color: Colors.grey,),
//                       margin: EdgeInsets.only(left: 20),
//                       child:  Text("20-30min",style: TextStyle(color: Colors.white),),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 20),
//                       child:  Text("2.5km   Restaurant",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10,),
//                 Row(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 20),
//                       child:Row
//                         (
//                         children: [
//                           Text("orange sandwiches is delicious",style: TextStyle(fontSize: 15),),
//                           IconButton(
//                             padding: EdgeInsets.only(left: 90),
//                               onPressed: ()
//                               {
//                                 toggleLike();
//                               }, icon: Icon(
//                             isLiked ? Icons.star : Icons.star_border,
//                             color: isLiked ? Colors.red : Colors.black,
//                           ),
//                           ),
//                         ],
//                       )
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20,),
//           Container(
//             color: Colors.white,
//             child: Row(
//               children: [
//                 //Recomend
//                 Container
//                   (
//                     margin: const EdgeInsets.all(12.5),
//                     padding: const EdgeInsets.all(5.0),
//                     decoration: BoxDecoration(
//                       color: _color ? Colors.orangeAccent : Colors.white,
//                     border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(20.0),
//                 ),
//                   child: InkWell(
//                     onTap: ()
//                     {
//                       toastmsg();
//                      },
//                     child: Text("Recomend",style: TextStyle(fontWeight: FontWeight.bold),),
//                   )
//                 ),
//                 ////Populer
//                 Container
//                   (
//                     margin: const EdgeInsets.all(12.5),
//                     padding: const EdgeInsets.all(5.0),
//                     decoration: BoxDecoration(
//                       color: _color ? Colors.deepOrangeAccent : Colors.white,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                     child: InkWell(
//                       onTap: ()
//                       {
//                         toastmsg();
//                       },
//                       child: Text("Populer",style: TextStyle(fontWeight: FontWeight.bold),),
//                     )
//                 ),
//                 //Noodles
//                 Container
//                   (
//                     margin: const EdgeInsets.all(12.5),
//                     padding: const EdgeInsets.all(5.0),
//                     decoration: BoxDecoration(
//                       color: _color ? Colors.deepOrangeAccent : Colors.white,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                     child: InkWell(
//                       onTap: ()
//                       {
//                         toastmsg();
//                       },
//                       child: Text("Noodles",style: TextStyle(fontWeight: FontWeight.bold),),
//                     )
//                 ),
//                 Container
//                   (
//                     margin: const EdgeInsets.all(12.5),
//                     padding: const EdgeInsets.all(5.0),
//                     decoration: BoxDecoration(
//                       color: _color ? Colors.deepOrangeAccent : Colors.white,
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                     child: InkWell(
//                       onTap: ()
//                       {
//                         toastmsg();
//                       },
//                       child: Text("pizza",style: TextStyle(fontWeight: FontWeight.bold),),
//                     )
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 50,),
//
//
//
//         ],
//       ),
//     );
//   }
//   void toggleLike()
//   {
//     setState(()
//     {
//       isLiked = !isLiked;
//     });
//   }
//   void toastmsg()
//   {
//     Fluttertoast.showToast
//       (
//         msg: "Welcome",
//         toastLength: Toast.LENGTH_LONG,
//         gravity: ToastGravity.BOTTOM,
//         backgroundColor: Colors.red,
//         textColor: Colors.yellow
//     );
//   }
// }