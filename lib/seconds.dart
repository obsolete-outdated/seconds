library seconds;

import 'package:datetime_utc_converter/datetime_utc_converter.dart';

const int millisInSecond = 1000;

int get secondsNowUTC => secondsFromDateTimeUTC(DateTime.now());

int secondsFromDateTimeUTC(final DateTime dateTime) => dateTimeConvertedToUTC(dateTime).millisecondsSinceEpoch ~/ millisInSecond;

DateTime dateTimeUTCFromSeconds(final int seconds) => DateTime.fromMillisecondsSinceEpoch(seconds * millisInSecond, isUtc: true);