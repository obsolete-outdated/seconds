library seconds;

const int _millisInSecond = 1000;

int get secondsNowUTC => secondsFromDateTimeUTC(DateTime.now());

int secondsFromDateTimeUTC(final DateTime dateTime) => dateTime.toUtc().millisecondsSinceEpoch~/_millisInSecond;

DateTime dateTimeUTCFromSeconds(final int seconds) => DateTime.fromMillisecondsSinceEpoch(seconds * _millisInSecond, isUtc: true);