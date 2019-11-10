library seconds;

const int millisInSecond = 1000;

int get secondsNowUTC => secondsFromDateTimeUTC(DateTime.now());

int secondsFromDateTimeUTC(final DateTime dateTime) => dateTime.toUtc().millisecondsSinceEpoch ~/ millisInSecond;

DateTime dateTimeUTCFromSeconds(final int seconds) => DateTime.fromMillisecondsSinceEpoch(seconds * millisInSecond, isUtc: true);