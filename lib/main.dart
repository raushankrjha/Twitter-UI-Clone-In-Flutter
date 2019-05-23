import 'package:flutter/material.dart';

import 'package:twitter_ui_clone/model/tweet.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Twitter',
      theme: ThemeData.light(),
      home: MyHomePage(title: 'Twitter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
       
        title: Text("Home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.all(7.0),
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C5103AQET1B1xMkH-0A/profile-displayphoto-shrink_200_200/0?e=1558569600&v=beta&t=it8kcTi69M0Z4338kFVPpi4m3kvElazk8sINm4jHWfY"),
          ),
        ),
        
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (int i){},
        items: 
      [
        
        BottomNavigationBarItem(
          icon:Icon(Icons.home) ,
          title: Text("")
        ),
         BottomNavigationBarItem(
          icon:Icon(Icons.search) ,
          title: Text("")
        ),
         BottomNavigationBarItem(
          icon:Icon(Icons.notifications) ,
          title: Text("")
        ),
         BottomNavigationBarItem(
          icon:Icon(Icons.mail) ,
          title: Text("")
        ),
       
      ]
      ,),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.blue,
      
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  Widget _body() {
    return ListView.builder(
      itemCount: tweetData.length,
      itemBuilder: (context,i) =>
      
        new  Column(
          
          children: <Widget>[
           new Divider(height:15.0,),
           ListTile(
              leading: CircleAvatar(
                 backgroundImage: NetworkImage(tweetData[i].profileUrl),
              ),
              
              title: Column(
                children: <Widget>[
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               
                   Text( tweetData[i].name,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                   Text(" @"+tweetData[i].location,style: TextStyle(fontSize: 13.0,fontStyle: FontStyle.normal,color: Colors.grey),),
                   Text(". "+tweetData[i].time,style: TextStyle(fontSize: 13.0,fontStyle: FontStyle.normal,color: Colors.grey),),

              ],),


                 
                ],
              ),
              subtitle: Column(
                children: <Widget>[
                  SizedBox(
              height: 10,
            ),
                  Text( tweetData[i].title,
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  ),
                  SizedBox(
              height: 5,
            ),
             Image.asset(tweetData[i].thumbnilUrl),
             SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                    Icon(Icons.chat_bubble_outline,color: Colors.grey,),
                     Icon(Icons.repeat,color: Colors.grey,),
                      Icon(Icons.favorite_border,color: Colors.grey,),
                       Icon(Icons.share,color: Colors.grey,)

              ],)
                ],
              ),
            ),
           
          
            
            SizedBox(
              height: 20,
            )
          ],
        ),
      
    );
  }
}
