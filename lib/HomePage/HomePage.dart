import 'package:flutter/material.dart';
import 'package:flutter_app/Cart/Cart.dart';
import '../SearchPage/SearchPage.dart';
import '../Profile/Profile.dart';
class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
 List<Widget> contents = [Profile(),Cart(),SearchPage()];
  @override
  

  Widget build(BuildContext context) {
    return Scaffold(
      body: contents[currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
            onTap: getCurrentIndex,
          
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text("Profile")),
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),title: Text("Cart")),
            
            BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("SearchPage"))
          ],
        ),
      appBar: AppBar(
        title: const Text("HOMEPAGE"),
        leading: Icon(Icons.access_time),
        actions: <Widget>[Icon(Icons.settings)],
    )
    );
  }

  void getCurrentIndex(int value) {
    setState(() {
      currentIndex=value;
    });
  }
}
