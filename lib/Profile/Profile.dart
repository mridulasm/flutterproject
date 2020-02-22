import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
        children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 40,
                  backgroundImage: AssetImage('assets/images/tink.png'),
                  backgroundColor: Colors.transparent,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Tinkerbell',style: TextStyle(color:Colors.lightGreen,fontWeight: FontWeight.bold),),
                    Text('@tinkerbell',style: TextStyle(color:Colors.lightGreen),),
                  ],
                ),


              ],
            ),
            SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
            children: <Widget>[

              Text('Settings',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
              ]),
          ),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  ListTile(
                    title: Text('My Preference',style: TextStyle(fontStyle: FontStyle.italic),),
                    trailing: Icon(Icons.arrow_forward_ios),

                  ),
                  Divider(thickness: 1,),
                  ListTile(
                    title: Text('My Subscription',style: TextStyle(fontStyle: FontStyle.italic),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                  Divider(thickness: 1,),
                  ListTile(
                    title: Text('Contact Support',style: TextStyle(fontStyle: FontStyle.italic),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(thickness: 1,),
                  ListTile(
                    title: Text('Change Password',style: TextStyle(fontStyle: FontStyle.italic),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),

            ),
          Text('Please feel free to contact us for any \n queries and feedback',style: TextStyle(fontStyle: FontStyle.normal),),



        ],

      ),
          )),
    );


  }
}
