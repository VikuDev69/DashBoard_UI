import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(context),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.grey.shade800,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 16,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_add),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined),
          label: 'Home',
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      height: 250,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        color: Colors.blue,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Text(
              'Dashboard',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            trailing: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/naruto/images/b/bb/Itachi.png/revision/latest/scale-to-width-down/300?cb=20220214112531'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Dr. Vikas Bharti",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Md. (General Medium), DM",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "(Cardiology)",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildHeader(),
          const SizedBox(height: 20),
          const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Appointments",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
          Card(
              elevation: 4.0,
              color: Colors.white,
              margin: const EdgeInsets.all(16.0),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ListTile(
                      title: const Text('Today'),
                      subtitle: const Text('18 patients'),
                      leading: Container(
                        alignment: Alignment.bottomCenter,
                        width: 45,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                                height: 20,
                                width: 8.0,
                                color: Colors.grey.shade400),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Container(
                                height: 25,
                                width: 8.0,
                                color: Colors.grey.shade400),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Container(
                                height: 40, width: 8.0, color: Colors.blue),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Container(
                                height: 30,
                                width: 8.0,
                                color: Colors.grey.shade400),
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                        child: ListTile(
                      title: const Text('Canceled'),
                      subtitle: const Text('7 patients'),
                      leading: Container(
                        alignment: Alignment.bottomCenter,
                        width: 45,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                                height: 10,
                                width: 8.0,
                                color: Colors.grey.shade400),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Container(
                                height: 15,
                                width: 8.0,
                                color: Colors.grey.shade400),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Container(
                                height: 30, width: 8.0, color: Colors.red),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Container(
                                height: 20,
                                width: 8.0,
                                color: Colors.grey.shade400),
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Expanded(
                flex: 2,
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      height: 150.h,
                      width: 200.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Icon(
                              Icons.person_pin_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Text(
                              "Number Of Patient",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Text(
                              "1200",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      height: 150.h,
                      width: 110.w,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Icon(
                              Icons.bedroom_child,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Text(
                              "Admitted",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Text(
                              "857",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Expanded(
                flex: 2,
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      height: 150,
                      width: 110,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Icon(
                              Icons.directions_walk,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Text(
                              "Discharged",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Text(
                              "864",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      height: 150,
                      width: 110,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Icon(
                              Icons.download,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Text(
                              "Dropped",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Text(
                              "857",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      height: 150,
                      width: 110,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Icon(
                              Icons.assist_walker,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Text(
                              "Arrived",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                              top: 5,
                            ),
                            child: Text(
                              "698",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
