import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Profile(),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          color: Colors.indigo,
        ),
        Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 120)),
              buildAvatar(),
              const Padding(padding: EdgeInsets.only(top: 3)),
              createTextWidget('John Doe', size: 40, weight: FontWeight.w700),
              createTextWidget(
                'Flutter Developer',
                color: Colors.indigo,
                size: 18,
                weight: FontWeight.w500,
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildSocialButton(Icons.facebook_rounded),
                  buildSocialButton(Icons.whatsapp_rounded),
                  buildSocialButton(Icons.email_rounded),
                  buildSocialButton(Icons.reddit_rounded),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Column buildAvatar() {
    return Column(
      children: const [
        FittedBox(
          fit: BoxFit.fitWidth,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/person.jpg'),
            radius: 70,
          ),
        )
      ],
    );
  }

  Text createTextWidget(
    String text, {
    double size = 20,
    FontWeight weight = FontWeight.w400,
    Color color = Colors.black,
  }) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: weight),
    );
  }

  Widget buildSocialButton(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: IconButton(
        onPressed: (){},
        icon: Icon(
          icon,
          color: Colors.indigo,
          size: 40,
        ),
      ),
    );
  }
}
