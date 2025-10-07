import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Color(0xFF2B3036),
          secondary: Color(0xFF181B20), 
          surface: Color(0xFFF5F5F5),
          error: Color(0xFFF13554),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isSidebarOpen = false;
  
  void _toggleSidebar() {
    setState(() {
      _isSidebarOpen = !_isSidebarOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        flexibleSpace: Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50),
                  width: 100,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.error,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "M",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "RAJPUT",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                      width: 100,
                      height: 120,
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.density_medium,
                            color: Theme.of(context).colorScheme.onPrimary,
                            size: 20,
                          ),
                          onPressed: _toggleSidebar,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  width: double.infinity,
                  height: 300,
                  color: Theme.of(context).colorScheme.secondary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hii, I am XYZ', style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 26, fontWeight: FontWeight.w700)),
                      Text('Software Developer', style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 30, fontWeight: FontWeight.w800)),
                      Text('I work to make a better web, one that is fast, easy to use, beautiful, accessible to all, and frustration free. Regardless of your specific business requirements', style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 16, fontWeight: FontWeight.w600)),
                      Container(
                        width: 100,
                        height: 50,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.error,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Click Me',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.surface,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 210,
                        height: 50,
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('PROJECTS', style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 26, fontWeight: FontWeight.w700)),
                            Container(
                              width: 30,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            transform: Matrix4.translationValues(
              _isSidebarOpen ? 0 : -200,
              0,
              0,
            ),
            child: Container(
              width: 200,
              height: double.infinity,
              color: Theme.of(context).colorScheme.primary,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.home, color: Theme.of(context).colorScheme.surface),
                    title: Text('Home', style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 16, fontWeight: FontWeight.w600)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person, color: Theme.of(context).colorScheme.surface),
                    title: Text('Contact', style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 16, fontWeight: FontWeight.w600)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Theme.of(context).colorScheme.surface),
                    title: Text('About', style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 16, fontWeight: FontWeight.w600)),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Theme.of(context).colorScheme.surface),
                    title: Text('Blogs', style: TextStyle(color: Theme.of(context).colorScheme.surface, fontSize: 16, fontWeight: FontWeight.w600)),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Blogs'),
        ],
      ),
    );
  }
}
