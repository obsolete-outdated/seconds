import 'package:seconds/seconds.dart';

void main() async {
  final DateTime now = DateTime.now();

  //Do not call a variable "secondsNowUTC" as
  //secondsNowUTC is a library getter, as shown below
  final int secondsNow = secondsFromDateTimeUTC(now);

  await Future.delayed(const Duration(seconds: 1));

  final int secondsNowUTCbyGetter = secondsNowUTC;

  assert(secondsNowUTCbyGetter - secondsNow >= 1);
}