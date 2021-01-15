
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  Widget _buildSingleContainer({IconData icon, int count , String name , BuildContext context}){
    return  Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: Colors.grey,
                ),
                SizedBox(width: 10,),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 35,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            indicatorWeight: 3,
            tabs: [
              Text("DashBoard", style: TextStyle(
                fontSize: 23,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              Text("Manage", style: TextStyle(
                fontSize: 23,
                color: Colors.black26,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
          backgroundColor: Colors.white,
          title: Text("Admin Home", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          child: TabBarView(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: GridView.count(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    crossAxisCount: 2,
                    children: [
                      _buildSingleContainer(
                        context: context,
                        count: 1,
                        icon: Icons.person,
                        name: "User",
                      ),
                      _buildSingleContainer(
                        context: context,
                        count: 18,
                        icon: Icons.add_a_photo,
                        name: "Add Wallpaper",
                      ),
                      _buildSingleContainer(
                        context: context,
                        count: 1,
                        icon: Icons.delete,
                        name: "Delete Wallpaper",
                      ),
                      _buildSingleContainer(
                        context: context,
                        count: 1,
                        icon: Icons.update,
                        name: "Update Wallpaper",
                      ),
                      _buildSingleContainer(
                        context: context,
                        count: 1,
                        icon: Icons.photo_library,
                        name: "Featured Wallpaper",
                      ),
                      _buildSingleContainer(
                        context: context,
                        count: 1,
                        icon: Icons.event,
                        name: "Event/Fest",
                      ),
                    ],
                  )

              ),
              Container(
                child: Center(child: Text("Settings"),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
