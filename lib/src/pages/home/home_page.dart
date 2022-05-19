import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  static const String addTextIconSvg = 'assets/addTextIcon.svg';

  final Widget useAddTextIcon = SvgPicture.asset(
    addTextIconSvg,
    height: 25,
    width: 25,
    fit: BoxFit.scaleDown,
  );

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _tobar(),
              const SizedBox(height: 6),
              _profileInfo("Call samu", "callsamu",
                  "Usem snapd, está bom demais. SystemD é uma revolução, use Wayland. ''não é meme'' \n\n#Ubuntu #Canonical #Fedora"),
              _profileInfo("Maris Lawrence", "maris",
                  "Acessem meu blog, lá escrevo coisas legais 😊\n\n www.umamorsemvoz.com.br"),
              _profileInfo("Shin", "aoshin",
                  "Hoje no almoço com Dória, foi divertido 😋😋😋😋!\nIrei sempre ficar bêbado e comer coisas caras."),
              _profileInfo("Cap", "gnucap",
                  "Lembre-se, se for programar, use GO. Renegue C, venha aprender a programar decentemente!"),
              _profileInfo("Raizen", "rtfm",
                  "Tô bebado, ala bani uns 5 hoje kkkkkkj.\nVamo lá FDN, que hoje eu apago o #offtopic \n\n#sextou #casaDoDória #aoshin "),
              _profileInfo("Raizen", "rtfm",
                  "Galera, apaguei a db do trampo HIUUUUUUUU 🍻🍻. "),
              _profileInfo("Zyon 👨🏻‍🦲", "interregnum",
                  "Agora sim consigo rodar hello world em Java com 32gb de ram.\nVou dormir no quentinho com Android Studio aberto 🔥"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _icons(),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: useAddTextIcon),
    );
  }
}

_tobar() {
  const String twitterSvg = 'assets/twitter.svg';
  const String featureSvg = 'assets/feature.svg';

  return Container(
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.grey, width: 0.5),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(maxRadius: 20),
          SvgPicture.asset(twitterSvg),
          SvgPicture.asset(featureSvg),
        ],
      ),
    ),
  );
}

_icons() {
  const String homeIcon = 'assets/homeIcon.svg';
  const String searchIcon = 'assets/searchIcon.svg';
  const String bellIcon = 'assets/bellIcon.svg';
  const String mailIcon = 'assets/mailIcon.svg';

  return BottomAppBar(
    child: Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(icon: SvgPicture.asset(homeIcon), onPressed: () {}),
          IconButton(icon: SvgPicture.asset(searchIcon), onPressed: () {}),
          IconButton(icon: SvgPicture.asset(bellIcon), onPressed: () {}),
          IconButton(icon: SvgPicture.asset(mailIcon), onPressed: () {}),
        ],
      ),
    ),
  );
}

_profileInfo(userName, userNick, textHere) {
  return Container(
    margin: const EdgeInsets.only(
      top: 0,
      left: 8,
      bottom: 10,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          maxRadius: 25,
        ),
        Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(top: 15),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _fullBody(userName, userNick, textHere),
              ],
            ),
          ],
        ),
      ],
    ),
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.grey, width: 0.5),
      ),
    ),
  );
}

_fullBody(userName, userNick, textHere) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 1),
      ),
      _userName(userName, userNick),
      _userBoy(textHere),
      _reactions(),
    ],
  );
}

_userName(userName, userNick) {
  return Container(
    margin: const EdgeInsets.only(top: 5),
    child: Row(
      children: [
        Text(
          userName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: Text(
            "@$userNick",
            style: const TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Text(
          "2h",
          style: TextStyle(
            color: Colors.black45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}

_userBoy(textHere) {
  return Container(
    margin: const EdgeInsets.only(top: 5, bottom: 8),
    // color: Colors.amber,
    width: 320,
    height: 70,
    child: Text(textHere),
  );
}

_reactions() {
  const String commentSvg = 'assets/commentIcon.svg';
  const String retweetSvg = 'assets/retweetIcon.svg';
  const String heartSvg = 'assets/HeartIcon.svg';
  const String shareSvg = 'assets/shareIcon.svg';

  return Container(
    padding: const EdgeInsets.only(bottom: 8, top: 5),
    width: 300,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(commentSvg),
        SvgPicture.asset(retweetSvg),
        SvgPicture.asset(heartSvg),
        SvgPicture.asset(shareSvg),
      ],
    ),
  );
}
