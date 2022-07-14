import 'package:demoproject/app_strings.dart';
import 'package:demoproject/home/animated_page.dart';
import 'package:demoproject/home/settings_page.dart';
import 'package:flutter/material.dart';

var appStrings = AppStrings();

class HomePageStatefulWidget extends StatefulWidget {
  const HomePageStatefulWidget({Key? key}) : super(key: key);

  @override
  State<HomePageStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<HomePageStatefulWidget> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_returnPageTitle(_selectedIndex)),
      ),
      body: Center(
        child: _buildWidget(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: const Icon(Icons.home), label: appStrings.homePage),
          BottomNavigationBarItem(
            icon: const Icon(Icons.animation),
            label: appStrings.animation,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: appStrings.settings,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget? _buildWidget(int selectedIndex) {
    final items = [
      'C languages',
      'Code',
      'Coding-languages',
      'Flutter',
      'Globe',
      'Html',
      'Java script',
      'My SQl',
      'Python',
      'React',
      'Startup',
      'Swift',
      'Visual-basic',
      'React',
      'Startup',
      'Swift',
      'Visual-basic',
      'C languages',
      'Code',
      'Coding-languages',
      'Flutter',
      'Globe',
      'Html',
      'Java script',
      'My SQl'
    ];
    final subItems = [
      'C programming',
      'Coding programming',
      'All coding-languages',
      'Flutter mobile app',
      'Global',
      'Web pages',
      'Check webpages',
      'Programming language',
      'SQl Programming language',
      'Programming language',
      'Mobile app',
      'Startup ideas',
      'Programming language',
      'Programming language',
      'Mobile app',
      'Startup ideas',
      'Programming language',
      'Programming language',
      'All coding-languages',
      'Flutter mobile app',
      'Global',
      'Web pages',
      'C programming',
      'Coding programming',
      'All coding-languages',
      'Flutter mobile app',
    ];
    final imagesText = [
      'c-logo.png',
      'code.png',
      'coding-language.png',
      'flutter.png',
      'global.png',
      'html.png',
      'js_logo.png',
      'mysql.png',
      'python.png',
      'react.png',
      'startup.png',
      'swift.png',
      'visual-basic.png',
      'code.png',
      'coding-language.png',
      'flutter.png',
      'global.png',
      'flutter.png',
      'global.png',
      'html.png',
      'js_logo.png',
      'mysql.png',
      'python.png',
      'react.png',
      'startup.png',
    ];
    if (selectedIndex == 0) {
      return ListView.separated(
        itemCount: 25,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 1,
          thickness: 2.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Text(items[index]),
              subtitle: Text(subItems[index]),
              leading:
                  CircleAvatar(backgroundImage: AssetImage(imagesText[index])));
          // ListTile(
          // title: Text('item $index'),
        },
      );
    } else if (selectedIndex == 1) {
      return const AnimatedPage();
    } else if (selectedIndex == 2) {
      return const SettingsPage();
    }
  }

  String _returnPageTitle(int selectedIndex) {
    if (selectedIndex == 0) {
      return appStrings.homePage;
    } else if (selectedIndex == 1) {
      return appStrings.animation;
    } else if (selectedIndex == 2) {
      return appStrings.settings;
    }
    return '';
  }
}
