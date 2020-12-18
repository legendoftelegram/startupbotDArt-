import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

void main() {
  var dartbot = TeleDart(Telegram('token'), Event());

  dartbot.start().then((me) => print('${me.username} is initialised'));
  var keyone = 'start';
  dartbot
      .onMessage(keyword: keyone)
      .listen((message) => message.reply('hello'));
}
