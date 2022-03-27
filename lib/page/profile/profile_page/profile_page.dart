import 'package:flutter/material.dart';
import 'package:yourappawesome/page/home/home_main.dart';
import 'package:yourappawesome/page/profile/profile_page/profile_component/profile_end_drawer.dart';
import 'package:yourappawesome/page/profile/profile_page/profile_component/profile_header.dart';
import 'package:yourappawesome/page/profile/profile_page/profile_component/profile_sub_header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, HomeMain.routeName),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Profile"),
      ),
      
      endDrawer: const ProfileEndDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            const ProfileHeader(),
            const SizedBox(height: 20,),
            const ProfileSubHeader(),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  height: 40,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                    ),
                    onPressed: (){}, child: const Text("Follow", style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(
                  width: 150,
                  height: 40,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1),
                    ),
                    onPressed: (){}, child: const Text("Follow", style: TextStyle(color: Colors.black),)),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            ProfileTabBar(tabController: _tabController),
            const SizedBox(height: 20,),
            ProfileTabBarView(tabController: _tabController)
          ],
        ),
      ),
    );
  }
}

class ProfileTabBarView extends StatelessWidget {
  const ProfileTabBarView({
    Key? key,
    required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          GridView.builder(
            itemCount: 42,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1/1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Image.network("https://picsum.photos/id/${index + 1}/200/200");
            }
          ),
          Container(
            color: Colors.red,
          )
        ],

      ),
    );
  }
}

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({
    Key? key,
    required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TabBar(
        controller: _tabController,
        labelPadding: const EdgeInsets.all(0),
        unselectedLabelColor: Colors.red,
        labelColor: Colors.blue,
        indicatorColor: Colors.blue,
        tabs: const [
          Tab(child: Icon(Icons.ac_unit_outlined)),
          Tab(child: Icon(Icons.ac_unit_outlined)),
        ],
      ),
    );
  }
}

