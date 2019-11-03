library seconds;

int get secondsNowUTC => secondsFromDateTimeUTC(DateTime.now());

int secondsFromDateTimeUTC(final DateTime dateTime) => dateTime.toUtc().millisecondsSinceEpoch~/1000;